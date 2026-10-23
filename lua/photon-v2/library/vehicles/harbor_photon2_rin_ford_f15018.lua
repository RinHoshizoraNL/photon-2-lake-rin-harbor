if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LR Harbor Authority"
VEHICLE.Vehicle		= "smfordresponder"
VEHICLE.Category 	= "Photon 2: Lake Rin Harbor"
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Maintenance Service",
				SubMaterials = {
					{ Id = 29, Material = "rin/port/f150/port_authority" }
				},
			},
		}
	},
	{
		Category = "Lighting",
		Options = {
			{
				Option = "Default",
				Components = {
					{
						Name = "@standard",
						Component = "photon_standard_smf15018",
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {},
							}
						}
					},
				}
			}
		}
	},
	{
		Category = "Dash Light",
		Options = {
            {
				Option = "Federal Signal X-stream",
				Components = {
					{
						Component = "photon_fedsig_xstream_duo",
						Position = Vector( 0, 68.9, 70.5  ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						States = {
							[1] = "A",
							[2] = "A",
						},
						BodyGroups = {
							["shroud"] = 0,
							["mount"] = 0,
						},
						Segments = {
							LightDash = {
								Frames = {
									[1] = "1",
									[2] = "2",
									[3] = "1 2",
								},
								Sequences = {
									["STAGE3"] = {3,3,3,0,0,0,3,3,3,0,3,0,3,0,0,3,0,0,3,0,0,3,0,3,0,0,0},
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {LightDash = "STAGE3"},
							},
						},
						Bones = {
							["suction_mount"] =	{ Vector( 0, 0, 0 ), Angle( 0, 0, 5 ), 1 },
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
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
                        Position = Vector( 23, 20, 90.3 ),
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
                        Position = Vector( -23, -110, 92 ),
                        Angles = Angle( -1, 90, -3 ),
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
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				SubMaterials = {
					{ Id = 23, Material = "photon/common/blank" },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8.5, 38, 60 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/port/props/laptop_screen_port",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "center console", Value = 0 },
					{ BodyGroup = "towbar", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
                    { BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 5 },
					{ BodyGroup = "rear bumper", Value = 2 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "responder badge", Value = 0 },
                    { BodyGroup = "bed", Value = 2 },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/port/props/plate_port",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/port/props/plate_port",
						},
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 46.5, 85 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -60, 91.5 ),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 0, 35.3, 50.6 ),
						Angles = Angle( -56, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					}
				}
			}
		}
	},
}