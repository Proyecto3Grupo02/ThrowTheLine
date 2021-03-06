--Example of scene, it's just a table with list of entities

local NAME = "menu";
local scene = {
-- camera and light
		{
			type = "MainCamera",
			position = { z = 10, y = 3  },
			rotation = { x = -25},
		},
		{
			type = "Entity",
			name = "light",
			position = { x = 0, y = 4, z = 0},
			components = {
				{
					type = "Light",
					data = {
						lightType = "DirLight",
						color = { r = 0.8, g = 0.8, b = 0.8  },
						spec = { r = 0.8, g = 0.8, b = 0.8 },
						direction = { x = 0, y = -0.5, z = -0.75 }
					}
				}
			}
		},

	
-- UI FONDO Y TITULO
	{
		type = "UI",
		data = 
			{
				type = "Image",--Button/Image
				name = "Fondo",
				material = "fondo_menu_material",
				order = 0,
				x = 0,
				y = 0,
				width = 0.999,
				height = 0.999,
				visible = true,
			},
	},
	{
        type = "UI",
		data = 
			{
				type = "Image",--Button/Image
				name = "Titulo",
				material = "nombre_material",
				order = 1,
				x = 0.3,
				y = 0,
				width = 0.4,
				height = 0.2,
				visible = true,
			},
	},
-- UI BOTONES
	{
        type = "UI",
		data = 
			{
				type = "Button",--Button/Image
				name = "Logo",
				material = "logo_aegis_material",
				order = 1,
				x = 0,
				y = 1,
				width = 0.1,
				height = 0.2,
				visible = true,
				uiData = { id = 1, image = "@Members", backButton="@Back" },
				callback = function(uiData)
					print("HTP");	
					uiData.image:SetVisible(true)
					uiData.backButton:SetVisible(true)
					SoundManager:PlayOneShot("clin");
				end 
			},
	},
	{
        type = "UI",
		data = 
			{
				type = "Button",--Button/Image
				name = "Play",
				material = "start_material",
				order = 1,
				x = 0.4,
				y = 0.3,
				width = 0.2,
				height = 0.2,
				visible = true,
				callback = function()
					print("START");	
					SoundManager:PlayOneShot("clin");
					local terrainScene = require "TerrainScene";
					SceneManager:LoadScene(terrainScene);
				end 
			},
	},
	{
        type = "UI",
		data = 
			{
				type = "Button",--Button/Image
				name = "Story",
				material = "story_material",
				order = 1,
				x = 0.45,
				y = 0.55,
				width = 0.1,
				height = 0.1,
				visible = true,
				uiData = { id = 1, image = "@Historia", backButton="@Back" },
				callback = function(uiData)
					print("STORY");	
					SoundManager:PlayOneShot("clin");
					uiData.image:SetVisible(true)
					uiData.backButton:SetVisible(true)
				end 
			},
	},
	{
        type = "UI",
		data = 
			{
				type = "Button",--Button/Image
				name = "HowToPlay",
				material = "htp_material",
				order = 1,
				x = 0.45,
				y = 0.7,
				width = 0.1,
				height = 0.1,
				visible = true,
				uiData = { id = 1, image = "@Controles", backButton="@Back" },
				callback = function(uiData)
					print("HTP");	
					SoundManager:PlayOneShot("clin");
					uiData.image:SetVisible(true)
					uiData.backButton:SetVisible(true)
				end 
			},
	},
-- UI CONTROLES E HISTORIA
	{
		type = "UI",
		data = 
			{
				type = "Image",--Button/Image
				name = "Controles",
				material = "controles_material",
				order = 4,
				x = 0,
				y = 0,
				width = 0.999,
				height = 0.999,
				visible = false,
			},
	},
	{
		type = "UI",
		data = 
			{
				type = "Image",--Button/Image
				name = "Historia",
				material = "historia_material",
				order = 3,
				x = 0,
				y = 0,
				width = 0.999,
				height = 0.999,
				visible = false,
			},
	},
	{
		type = "UI",
		data = 
			{
				type = "Image",--Button/Image
				name = "Members",
				material = "members_material",
				order = 3,
				x = 0,
				y = 0,
				width = 0.999,
				height = 0.999,
				visible = false,
			},
	},
	{
        type = "UI",
		data = 
			{
				type = "Button",--Button/Image
				name = "Back",
				material = "home_button_material",
				order = 4,
				x = 0.98,
				y = 0.02,
				width = 0.07,
				height = 0.11,
				visible = false,
				uiData = { id = 1, imageH ="@Historia", imageC = "@Controles", imageM ="@Members",backButton="@Back" },
				callback = function(uiData)
					print("BACK");	
					uiData.imageH:SetVisible(false)
					uiData.imageC:SetVisible(false)
					uiData.imageM:SetVisible(false)
					uiData.backButton:SetVisible(false)
					SoundManager:PlayOneShot("plop");
				end 
			},
	},
	{
		type = "Entity",
		name = "MusicLoop",
		components = {
		  {
			type ="SoundEmitter",
			data = {
			  sound = "Menu-Ukulele",
			  volume = 0.1,
			  channel = "Music", -- podria ser sfx o lo que sea
			  loopCount = -1, -- -1 means infinite loop
			  playOnInit = true
			}
		  }
		}
	  },
};
return scene;
