AddCSLuaFile()

local VehicleName = "2020 Explorer CHP"

local EMV = {}

EMV.Siren = 25
EMV.Skin = 7
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 1 }, -- pushbar
	{ 2, 1 }, -- grille_lights
	{ 3, 1 }, -- mirror_lights
	{ 4, 1 }, -- visor_lights
	{ 5, 1 }, -- lightbar
	{ 6, 1 }, -- spotlight_l
	{ 7, 0 }, -- spotlight_r
	{ 8, 1 }, -- headlight_flashers
	{ 9, 1 }, -- fog_lights
	{ 10, 1 }, -- spoiler_lights
	{ 11, 1 }, -- trunk_lights
	{ 12, 1 }, -- rear_window_lights
	{ 13, 1 }, -- console
	{ 14, 0 }, -- pi_badge
	{ 15, 0 }, -- ecoboost_badge
	{ 16, 0 }, -- clamped1
	{ 17, 0 }, -- clamped2
	{ 18, 0 }, -- clamped3
	{ 19, 0 }, -- clamped4
	{ 20, 0 }, -- clamped5
	{ 21, 0 }, -- clamped6
	{ 22, 0 }, -- clamped7
}

EMV.Auto = {
	{
		ID = "Anemolis Whelen Liberty CHP",
		Scale = 1.10,
		Pos = Vector( 0, -4, 84 ),
		Ang = Angle( 1.5, 90, 0),
	},
	{
		ID = "Anemolis CHP Whelen Ion V",
		Scale = 2.5,
		Pos = Vector( 12, 130, 35.55 ),
		Ang = Angle( 0, 30, 0),
	},
	{
		ID = "Anemolis CHP Whelen Ion V",
		Scale = 2.5,
		Pos = Vector( -12, 130, 35.55 ),
		Ang = Angle( 0, -30, 0),
		Phase = "A"
	},
	{
		ID = "Anemolis CHP Whelen Ion V",
		Scale = 2.5,
		Pos = Vector( -51, 43.6, 62 ),
		Ang = Angle( 0, 32.5, 0),
		Phase = "A"
	},
	{
		ID = "Anemolis CHP Whelen Ion V",
		Scale = 2.5,
		Pos = Vector( 51, 43.6, 62 ),
		Ang = Angle( 0, -32.5, 0),
	}
}

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/dynamax_siren.mdl",
		Scale = 1.075,
		---Material = "models/supermighty/trunkbed/skin",
		Pos = Vector( 0, 130, 34.2 ),
		Ang = Angle( 0, -90, 0),
	},
	{
		Model = "models/supermighty/chp/chp_spotlight_left_down.mdl",
		Scale = 1,
		--Material = "models/supermighty/chp/lights",
		Pos = Vector( -40, 47, 68 ),
		Ang = Angle( 3, -90, 0),
	},
	{
		Model = "models/supermighty/chp/chp_spotlight_right_down.mdl",
		Scale = 1,
		--Material = "models/supermighty/chp/lights",
		Pos = Vector( 40, 47, 68 ),
		Ang = Angle( 0, -90, 0),
	},
	{			
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector( .9, .9, .9 ),
		Pos = Vector( 0, 128, 29 ),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( 1, 1, 1 ),
		Pos = Vector( 32.7, 121.5, 35 ),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( 1, 1, 1 ),
		Pos = Vector( -35.7, 119, 35 ),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
}

EMV.Sequences = {
	Sequences = {
		{ 
			Name = "PARK", 
			Stage = "M1", 
			Components = {
			}, 
			Disconnect = { 
			} 
		},
		{ 
			Name = "SCENE RED", 
			Stage = "M2", 
			Components = {
			}, 
			Disconnect = { 
			} 
		},
		{ 
			Name = "CODE 2", 
			Stage = "M3", 
			Components = {
			}, 
			TrafficDisconnect = { 
			} 
		},
		{ 
			Name = "CODE 3", 
			Stage = "M4", 
			Components = {
			}, 
			Disconnect = { } 
		}
	},
	Traffic = {
		{ 
			Name = "LEFT", 
			Stage = "L", 
			Components = {
			}, 
			TrafficDisconnect = { } 
		},
		{ 
			Name = "DIVERGE", 
			Stage = "D", 
			Components = {
			}, 
			Disconnect = {} },
		{
			Name = "RIGHT", 
			Stage = "R", 
			Components = {
			}, 
			Disconnect = {} 
		},
		{
			Name = "BRAKE", 
			Stage = "C1", 
			Components = {
			}, 
			Disconnect = {} 
		},
		{
			Name = "CAUTION", 
			Stage = "C2", 
			Components = {
			}, 
			Disconnect = {} 
		},
		{
			Name = "DEFMIN", 
			Stage = "C3", 
			Components = {
			}, 
			Disconnect = {} 
		},
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Anemolis72's CHP Vehicles",
	Author = "anemolis72",
	Model = "models/sentry/20explorer.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/20explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
