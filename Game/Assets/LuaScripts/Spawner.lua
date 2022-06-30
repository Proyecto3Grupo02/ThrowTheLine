local NAME = "Spawner";

local table = {};
function table.GetNew(entity, params)
	local component = Aegis.CreateComponent(NAME, entity);
	local data = component.data;
	local transform = entity.transform;
    local funcs = component.funcs;
	local acumulatedDT;
    local nextSpawn;
    local prefabs = require "Prefabs";
    local maxFish;
    local totalFishes;

    data.currFish = 0;
    data.score = "score"

    function Init() 
		nextSpawn = math.random(1, 3);
		acumulatedDT=0;
        maxFish = 5;             
        totalFishes = 0;
        
    end;

	function Update(deltaTime) 
		if acumulatedDT > nextSpawn and data.currFish < maxFish and totalFishes < 10 then
            acumulatedDT = acumulatedDT - nextSpawn;
            --print("Spawning fesh");
            --print(acumulatedDT);
            local fish = SceneManager:GetCurrentScene():InstantiatePrefab(prefabs[math.random(#prefabs)]);

            fish.transform.position = Aegis.Maths.Vector3(math.random(-20, 20), -57, math.random(-20, 20));
            fish.transform.localEulerAngles = Aegis.Maths.Vector3(0, math.random(0, 360), 0);

            local randomMovement = fish:GetComponent("RandomMovement");
            randomMovement.data.score = data.score;
            randomMovement.data.spawner = component;

            data.currFish = data.currFish + 1;
            totalFishes = totalFishes + 1;

            nextSpawn = math.random(3, 7);
		end;
		if data.currFish < maxFish and totalFishes < 10 then
            acumulatedDT = acumulatedDT + deltaTime;
        end;
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