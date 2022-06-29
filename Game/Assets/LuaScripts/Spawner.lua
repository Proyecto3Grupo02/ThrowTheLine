local NAME = "Spawner";

local table = {};
function table.GetNew(entity, params)
	local component = Aegis.CreateComponent(NAME, entity);
	local data = component.data;
	local transform = entity.transform;
    local funcs = component.funcs;
	local acumulatedDT;
    local lastTime;
    local prefabs = require "Prefabs";
    local maxFish = 5;

    data.currFish = 0;
    data.score = "score"

    function Init() 
		lastTime = 5;
		acumulatedDT=0;
        
    end;

	function Update(deltaTime) 
		if acumulatedDT > lastTime and data.currFish < maxFish then
            acumulatedDT = acumulatedDT - lastTime;
            print("Spawning fesh");
            --print(acumulatedDT);
            local fish = SceneManager:GetCurrentScene():InstantiatePrefab(prefabs[math.random(#prefabs)]);
            local rbFish = fish:GetComponent("Rigidbody").type;

            --rbFish:SetRotationEuler(Aegis.Maths.Vector3(0,180,0));

            local randomMovement = fish:GetComponent("RandomMovement");
            randomMovement.data.score = data.score;
            randomMovement.data.spawner = component;

            data.currFish = data.currFish + 1;
		end;
		acumulatedDT = acumulatedDT + deltaTime;
	end;

    function Fished()
        data.currFish = data.currFish - 1;
    end;

	funcs.init = Init;
    funcs.update = Update;
    funcs.fished = Fished;

	return component;
end;
return table;