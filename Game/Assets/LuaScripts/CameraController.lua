local NAME = "CameraController";
local table = {};
function table.GetNew(entity, params)
	local component = Aegis.CreateComponent(NAME, entity);
	local data = component.data;
	local transform = entity.transform;
    local funcs = component.funcs;
    local clampedAngle = 90
    data.child = "Undefined";
    data.senstivity = 100;
    data.smoothStep = 10;
    data.targetRotation = transform.localEulerAngles;

    data.freezeCamera = false;
    data.fishing = false;
    local freezeTimer = 0;

    function Init() 
        --entity:GetComponent("Camera");
        print("Entity name " .. entity:GetName());
        data.freezeCamera = true;
    end;
	function Update(deltaTime)
        --Freeze the camera the first 2 seconds of the game
        if data.freezeCamera then
            freezeTimer = freezeTimer + deltaTime;
            if freezeTimer > 2 then
                data.freezeCamera = false;
            end;
        end;
    end        

    function LateUpdate(deltaTime) 
        if not data.freezeCamera and not data.fishing then
            -- Move position of transform using awsd keys witha  value of 1, save the value and normalize before applying to transform
            local move = Aegis.Maths.Vector3(0, 0, 0);
            if Input:IsKeyDown("i") then
                move = move - transform.forward;
            end;
            if Input:IsKeyDown("j") then
                move = move - transform.right;
            end;
            if Input:IsKeyDown("k") then
                move = move + transform.forward;
            end;
            if Input:IsKeyDown("l") then
                move = move + transform.right;
            end;
    
            move:Normalize();
            transform.position = transform.position + move * deltaTime * 10;
    
            local mouseMotion = Input:GetMouseMotion();
            if mouseMotion.x ~= 0 and mouseMotion.y ~= 0 then
                local y = mouseMotion.y * deltaTime * data.senstivity;
                local x = mouseMotion.x * deltaTime * data.senstivity;
                --transform.localEulerAngles =  transform.localEulerAngles - Aegis.Maths.Vector3(y, x, 0);
                data.targetRotation = transform.localEulerAngles -  Aegis.Maths.Vector3(y, 0, 0); -- solo rota por libre en el eje y
            end;

            -- Lerp current Rotation to target rotation
            if(data.targetRotation.x >= clampedAngle) then
                local vecAux = Aegis.Maths.Vector3(clampedAngle, data.targetRotation.y, data.targetRotation.z)
                data.targetRotation = vecAux
            end;
            if(data.targetRotation.x <= -clampedAngle) then
                local vecAux = Aegis.Maths.Vector3(-clampedAngle, data.targetRotation.y, data.targetRotation.z)
                data.targetRotation = vecAux
            end;
            --print("X: "..data.targetRotation.x.."Y: "..data.targetRotation.y .. "Z: ".. data.targetRotation.z)
            transform.localEulerAngles = Aegis.Maths.Vector3Lerp(transform.localEulerAngles, data.targetRotation, deltaTime * data.smoothStep);
        end;
    end;
	function FixedUpdate() end;
	function OnCollision(other) end;
	function OnTrigger(other) end;
    function Freeze()
        data.fishing = not data.fishing;
    end;
	funcs.init = Init;
    funcs.update = Update;
    funcs.lateUpdate = LateUpdate;
    funcs.freeze = Freeze;
	return component;
end;
return table;