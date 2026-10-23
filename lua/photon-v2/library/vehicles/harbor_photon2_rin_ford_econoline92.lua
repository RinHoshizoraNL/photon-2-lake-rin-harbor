if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1992 Ford Econoline LR Harbor Authority"
VEHICLE.Vehicle		= "econoline_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Harbor"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Port Authority",
				SubMaterials = {
					{ Id = 21, Material = "rin/port/econoline92/port_authority" },
					{ Id = 17, Material = "sentry/econoline/leather4" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Patlite HKF Beacons",
				Components = {
					{
                        Component = "patlite_hkf",
                        Position = Vector( 25, 20, 89 ),
                        Angles = Angle( -3, -90, -4 ),
                        Scale = 1,
						StateMap = "[A] 3",
                        SubMaterials = {
							[6] = "sentry/shared/glass/amber"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
							}
						}
                    },
					{
                        Component = "patlite_hkf",
                        Position = Vector( -25, -125, 88.3 ),
                        Angles = Angle( -4, 90, -4 ),
                        Scale = 1,
						StateMap = "[A] 3",
                        SubMaterials = {
							[6] = "sentry/shared/glass/amber"
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
							}
						}
                    },
				}
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 55, 64.1),
						Angles = Angle( -2, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, 0, 90.6 ),
						Angles = Angle( 0, 0, -1 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 16.3, -150, 41.5 ),
						Angles = Angle( -5, 271, 00 ),
						Scale = 1.05,
						SubMaterials = {
							[1] = "rin/port/props/plate_port",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 107, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 107.8, 20 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/port/props/plate_port",
						},
					},
				}
			}
		}
	},
}