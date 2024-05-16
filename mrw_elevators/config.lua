-- Thanks for using this script! Check out other free scripts by me on CFX FiveM or my Tebex for paid scripts/support: https://angelicxs.tebex.io/

Config = {}

Config.UseESX = true						-- Use ESX Framework
Config.UseQBCore = false					-- Use QBCore Framework (Ignored if Config.UseESX = true)

Config.ThirdEyeName = 'ox_target' 			-- Name of third eye aplication
Config.Use3DText = false                        -- Use 3D text to interact
Config.NHMenu = false						-- Use NH-Context [https://github.com/nighmares/nh-context]
Config.QBMenu = false						-- Use QB-Menu (Ignored if Config.NHInput = true) [https://github.com/qbcore-framework/qb-input]
Config.OXLib = true						-- Use the OX_lib (Ignored if Config.NHInput or Config.QBInput = true) [https://github.com/overextended/ox_lib] !! must add shared_script '@ox_lib/init.lua' and lua54 'yes' to fxmanifest!!
Config.ElevatorWaitTime = 3					-- How many seconds until the player arrives at their floor

Config.Notify = {
	enabled = false,							-- Display hint notification?
	distance = 3.0,							-- Distance from elevator that the hint will show
	message = "Target the elevator to use"	-- Text of the hint notification
}

--[[
	USAGE
	To add an elevator, copy the table below and configure as needed:
		coords = vector3 coords of center of elevator
		heading = Direction facing out of the elevator
		level = What floor are they going to
		label = What is on that floor
		jobs = OPTIONAL: Table of job keys that are allowed to access that floor and value of minimum grade of each job
		items = OPTIONAL: Any items that are required to access that floor (only requires one of the items listed)
		jobAndItem = OPTIONAL: If true, you must you have a required job AND a required items. If false or nil no items are needed
	
]]

--[[
	ExampleElevator = {	
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 2", label = "Roof",
			jobs = {
				["police"] = 0,
				["ems"] = 0,
				["casino"] = 0,
			},
			items = {
				"casino_pass_bronze",
				"casino_pass_silver",
				"casino_pass_gold",
			}
		},
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 1", label = "Penthouse",
			jobs = {
				["police"] = 0,
				["ems"] = 0,
				["casino"] = 0,
			},
			items = {
				"casino_pass_gold",
			},
			jobAndItem = true
		},
		{
			coords = vector3(xxx, yyy, zzz), heading = 0.0, level = "Floor 0", label = "Ground"
		},
	},
]]

Config.Elevators = {

	VPDMainElevator = {	
		{
			coords = vector3(-1096.22, -850.763, 38.20), heading = 36.8, level = "6.Podlaží", label = "Roof Access",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 34.40), heading = 36.8, level = "5.Podlaží", label = "Detective Bureau",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 30.80), heading = 36.8, level = "4.Podlaží", label = "Operations Center",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 27.00), heading = 36.8, level = "3.Podlaží", label = "Division Offices & Briefing Room",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 23.00), heading = 36.8, level = "2.Podlaží", label = "Cafe",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 19.00), heading = 36.8, level = "1.Podlaží", label = "Main Hall",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 4.80), heading = 36.8, level = "-1.Podlaží", label = "Detention Cells & Interrogation",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 10.20), heading = 36.8, level = "-2.Podlaží", label = "Crime Lab & Evidence Rooms",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1096.22, -850.763, 13.70), heading = 36.8, level = "-3.Podlaží", label = "Garage & Armory",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
	},

	VPDPublicElevator = {
		{
			coords = vector3(-1066.05, -833.71, 26.82318), heading = 36.1, level = "Floor 3", label = "Division Offices",
		},
		{
			coords = vector3(-1066.05, -833.71, 23.03471), heading = 36.1, level = "Floor 2", label = "UNDER RENOVATIONS",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1066.05, -833.713, 18.9964), heading = 36.1, level = "Floor 1", label = "Main Hall",
		},
		{
			coords = vector3(-1066.05, -833.71, 4.88), heading = 36.1, level = "Floor -1", label = "Detention Cells & Interrogation",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(-1066.05, -833.71, 10.27282), heading = 36.1, level = "Floor -2", label = "Crime Lab & Evidence Rooms",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			}
		},
		{
			coords = vector3(-1066.05, -833.71, 13.69069), heading = 36.1, level = "Floor -3", label = "Garage & Armory",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
	},

	SkybarElevatorSouth = {
		{
			coords = vector3(315.49, -929.32, 52.81), heading = 176.67, level = "Skybar 5th Floor", label = "Bar Level for Skybar",
		},
		{
			coords = vector3(315.49, -929.32, 29.47), heading = 176.67, level = "Skybar Ground", label = "Street Level for Skybar",
		},
	},
	
	SkybarElevatorNorth = {
		{
			coords = vector3(309.81, -929.05, 52.81), heading = 176.67, level = "Skybar 5th Floor", label = "Bar Level for Skybar",
		},
		{
			coords = vector3(309.81, -929.05, 29.47), heading = 176.67, level = "Skybar Ground", label = "Street Level for Skybar",
		},
	},
	PillboxElevatorNorth = {
		{
			coords = vector3(332.3192, -595.6791, 43.2841), heading = 67.64, level = "Hlavní hala", label = "Pillbox",
		},
		{
			coords = vector3(342.2230, -585.0956, 28.7993), heading = 248.30, level = "Garáže", label = "Pillbox",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
	},

	Penthouse = {
		{
			coords = vector3(-304.9073, -720.8792, 28.0286), heading = 158.66, level = "Garáže", label = "Garáž",
		},
		{
			coords = vector3(-288.1168, -722.4497, 125.4732), heading = 249.1211, level = "Bytu", label = "Byt",
			jobs = {
				["unemployed"] = 0,
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
				["vinice"] = 0,
				["pivovar"] = 0,
				["farm"] = 0,
				["glass"] = 0,
				["tabacco"] = 0,
				["tequila"] = 0,
				["vanilla"] = 0,
				["bahama"] = 0,
				["delrayagency"] = 0,
			},
		},
	},


	EMS = {
		{
			coords = vector3(330.45, -601.07, 43.28), heading = 67.64, level = "Hlavní hala", label = "Pillbox",
		},
		{
			coords = vector3(343.6649, -582.0311, 28.7991), heading = 248.30, level = "Garáže", label = "Pillbox",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
	},

	PillboxRoofTop = {
		{
			coords = vector3(338.52, -583.84, 74.16), heading = 254.13, level = "Střecha", label = "Pillbox",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
		{
			coords = vector3(327.17, -603.87, 43.28), heading = 338.36, level = "Hlavní hala", label = "Pillbox",
			jobs = {
				["police"] = 0,
				["sheriff"] = 0,
				["ems"] = 0,
			},
		},
	},

}
