if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "АК-Альфа"
	SWEP.CSMuzzleFlashes = true
	SWEP.AimBreathingEnabled = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.Shell = "KK_INS2_556x45"
	SWEP.ShellDelay = 0.05
	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = -30}

	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.3004, -3, -1.4735),
			Vector(-0.5597, 0, 0)
		},
	}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/a_suppressor_aks.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/ethereal/upgrades/a_foregrip_alfa.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_pb1s5"] = {model = "models/weapons/upgrades/a_suppressor_aks.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_ver1tgrip"] = {model = "models/weapons/ethereal/upgrades/a_foregrip_alfa.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq115"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_aimpoi1nt"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_pbs5"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl", pos = Vector(-34,0,11.9), angle = Angle(), size = Vector(1, 1, 1), attachment = "silencer"},

		["kk_ins2_vertgrip"] = {model = "models/weapons/ethereal/upgrades/w_foregrip_alfa.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_1pbs5"] = {model = "models/weapons/upgrades/a_suppressor_aks.mdl", pos = Vector(-0,0,0), angle = Angle(), size = Vector(1, 1, 1), attachment = "silencer",active=true},
		["kk_ins2_anpeq115"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(17.4, 0, 3.55), angle = Angle(1, 1, -91), size = Vector(1, 1, 1), merge = false,active=true},

		["kk_ins2_vert1grip"] = {model = "models/weapons/ethereal/upgrades/w_foregrip_alfa.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_aim1point"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}
	
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.IronsightPos = Vector(-3.645, 3, 0.21)
	SWEP.IronsightAng = Vector(-0.2, 0.02, -30)

	SWEP.M203Pos = Vector(-1.2384, -4, 1.5356)
	SWEP.M203Ang = Vector(-4, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.1249, -1, -0.3497)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.1249, -1, -0.407)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.06, -1, -0.197)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.1049, -1, -0.2697)
	SWEP.KKINS2MagnifierAng = Vector()

	// for the keks

	SWEP.KKINS2CSTMCMorePos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.1249, -1, -0.2697)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.1249, -1, -0.397)
	SWEP.KKINS2CSTMACOGAng = Vector()

	SWEP.CustomizationMenuScale = 0.016
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_aimpoint"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_pbs5"}},
	--{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip", "kk_ins2_gl_gp25"}},
	{header = "Lasers", offset = {200, 400}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	
	base_pickup = "foregrip_ready",
	base_draw = "foregrip_draw",
	base_fire = "foregrip_fire_b",
	base_fire_aim = "foregrip_iron_fire",
	base_fire_empty = "foregrip_dryfire_b",
	base_fire_empty_aim = "foergrip_iron_dryfire", // like srsly?
	base_reload = "foregrip_reload",
	base_reload_empty = "foregrip_reloadempty",
	base_idle = "foregrip_holster",
	base_holster = "foregrip_holster",
	base_firemode = "foregrip_fireselect",
	base_firemode_aim = "foregrip_iron_fireselect",
	base_sprint = "foregrip_sprint",
	base_safe = "foregrip_down",
	base_safe_aim = "foregrip_iron_down",
	base_crawl = "foregrip_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire_b",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire_b",
	foregrip_fire_empty_aim = "foergrip_iron_dryfire", // like srsly?
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "foregrip_holster",
	foregrip_holster = "foregrip_holster",
	foregrip_firemode = "foregrip_fireselect",
	foregrip_firemode_aim = "foregrip_iron_fireselect",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",

	gl_off_pickup = "gl_ready",
	gl_off_draw = "gl_draw",
	gl_off_fire = "gl_fire",
	gl_off_fire_aim = {"gl_iron_fire","gl_iron_fire_a","gl_iron_fire_b","gl_iron_fire_c","gl_iron_fire_d","gl_iron_fire_e","gl_iron_fire_f"},
	gl_off_fire_empty = "gl_dryfire",
	gl_off_fire_empty_aim = "gl_iron_dryfire",
	gl_off_reload = "gl_reload",
	gl_off_reload_empty = "gl_reloadempty",
	gl_off_idle = "gl_holster",
	gl_off_holster = "gl_holster",
	gl_off_firemode = "gl_fireselect",
	gl_off_firemode_aim = "gl_iron_fireselect",
	gl_off_sprint = "gl_sprint",
	gl_off_safe = "gl_down",
	gl_off_safe_aim = "gl_iron_down",
	gl_off_crawl = "gl_crawl",

	gl_on_draw = "glsetup_draw",
	gl_on_fire = "glsetup_fire",
	gl_on_fire_aim = "glsetup_iron_fire",
	gl_on_fire_empty = "glsetup_dryfire",
	gl_on_fire_empty_aim = "glsetup_iron_dryfire",
	gl_on_reload = "glsetup_reload",
	gl_on_idle = "glsetup",
	gl_on_holster = "glsetup_holster",
	gl_on_sprint = "glsetup_sprint",
	gl_on_safe = "glsetup_down",
	gl_on_safe_aim = "glsetup_iron_down",
	gl_on_crawl = "glsetup_crawl",

	gl_turn_on = "glsetup_in",
	gl_turn_off = "glsetup_out",
}

SWEP.SpeedDec = 30

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_alfa.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_alfa.mdl"

SWEP.WMPos = Vector(3.166, 0.90, -1.255)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha
SWEP.CW_KK_40MM_MDL = "models/weapons/upgrades/a_projectile_gp25.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 180
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60/650
SWEP.FireSound = "CW_KK_INS2_AK74_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_AK74_FIRE_SUPPRESSED"
SWEP.Recoil = 1.8

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 55

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.FirstDeployTime = 2.1
SWEP.WeaponLength = 22

SWEP.MuzzleVelocity = 890

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},

	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35},

	gl_reload = {2.2, 3.15},
	gl_reloadempty = {2.2, 4.35},

	glsetup_in = {0.6, 0.6},
	glsetup_out = {0.7, 0.7},

	glsetup_reload = {1.75, 2.67}
}