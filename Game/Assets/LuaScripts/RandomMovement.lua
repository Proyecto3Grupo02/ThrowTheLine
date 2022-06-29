local NAME = "RandomMovement";
local table = {};
function table.GetNew(entity, params)
	local component = Aegis.CreateComponent(NAME, entity);
	local data = component.data;
	local transform = entity.transform;
    local funcs = component.funcs;
	local rigidbody;
	local canRoot;
	local ray;
	local root;
	local acumulatedDT;
	local acumulatedRay;
	local lastTimeRay; 
	local random; 
	local random2; 
	local wandering;
	local scoreManagerScrpit;
	data.score = "Score"
	data.spawner = "Spawner"
    function Init() 
        rigidbody = component.entity:GetComponent("Rigidbody").type;
		lastTime=1;
		lastTimeRay = 0;
		acumulatedDT=0;
		acumulatedRay=0;
		root = 0;			
		ray = false;
		random = 0;
		random2 = 0;
		rigidbody:SetAngular();
		--rigidbody:SetPosition(Aegis.Maths.Vector3(0,-57,0));
		rigidbody:FreezeRot(true,false,true)
		wandering = true;
		
    end;

	function Update(deltaTime) 
		
		if acumulatedDT > lastTime then
			canRoot=true;
			root = math.random(-10,10);
			acumulatedDT = acumulatedDT - lastTime;	
			ray = true;		
		end;
		acumulatedDT = acumulatedDT + deltaTime;
	end;
    
	function LateUpdate(deltaTime)
	end;

	function FixedUpdate() 
		
		if wandering then
			rigidbody:SetRotationEuler(transform.localEulerAngles + Aegis.Maths.Vector3(0,root / 10,0));
			rigidbody:AccelerateTo(transform.forward * -1 * 7, 10000000);
		
		
			if ray then
				local dest = transform.forward * -1;
				local origin = transform.position;
				local otherEntity = rigidbody:RayCastWorld(origin, dest, 10);
				if otherEntity ~= nil and otherEntity:GetComponent("Rigidbody").type ~= nil then
					print(otherEntity:GetName());
					
					local otherRb = otherEntity:GetComponent("Rigidbody").type;
					if otherRb.mass == 0 then 					
						rigidbody:SetRotationEuler(transform.localEulerAngles + Aegis.Maths.Vector3(0,180,0));
						rigidbody:AccelerateTo(transform.forward * -1 * 7, 10000000);
					end;

					if otherEntity:GetName() == 'Anzuelo' then
							wandering = false;
					end;
				end;
				
				ray = false;
			end;
		end;
	end;

	function OnTrigger(other)
		print(other:GetName());
		if other:GetName() == 'Anzuelo' then
			print("Colision de un pez con el anzuelo");
			data.score.funcs.updateScore();
			entity:Destroy();		
			data.spawner.funcs.fished();	
		end;
	end;

	funcs.init = Init;
    funcs.update = Update;
    funcs.fixedUpdate = FixedUpdate;
    funcs.onTriggerEnter = OnTrigger;
	return component;
end;
return table;