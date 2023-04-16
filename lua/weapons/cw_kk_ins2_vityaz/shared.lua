if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Витязь 'ЧВК'"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_9x19"
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
	SWEP.ShellWorldAngleAlign = {Forward = 0, Right = 0, Up = 180}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_05.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_f_tgpa"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(0, .25, 0.05), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), attachment = "Suppressor", merge = false,active=true},
		
		
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq115"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra1"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_5.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(15.8845, 0, 2.2), angle = Angle(), size = Vector(0.6, 0.7, 0.7), merge = false,active=true},
		["kk_ins2_a1npeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(11, 1, 2.5), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false,active=true},

		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobr1a"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		}

	SWEP.IronsightPos = Vector(-3.645, 3, 0.21)
	SWEP.IronsightAng = Vector(-0.2, 0.02, -30)

	SWEP.KKINS2KobraPos = Vector(-2.970, -5, 0.6)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.970, -5, 0.7)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.970, -5, 0.7)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.970, -10, 0.35)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.910, -13, 0.72)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.970, -13, 0.7)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.KKINS2CSTMCMorePos = Vector(-2.970, -5, 0.66)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.970, -5, 0.66)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.970, -5, 0.66)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.970, -5, 0.66)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.970, -5, 0.66)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.970, -12, 0.4)
	SWEP.KKINS2CSTMACOGAng = Vector()

	SWEP.CustomizationMenuScale = 0.010
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.WeaponLength = 16

SWEP.Attachments = {
	{header = "Прицел", offset = {300, -700}, atts = {"kk_ins2_kobra"}},
	--{header = "Barrel", offset = {-300, -700}, atts = {"kk_ins2_suppressor_sec"}},
	{header = "Lasers", offset = {-500, -200}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {800, -200}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {300, -200}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {0, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
}

SWEP.SpeedDec = 15

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_vityaz.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_vityaz.mdl"

SWEP.WMPos = Vector(4.171, 1.767, -1.544)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 180
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60/700
SWEP.FireSound = "CW_KK_INS2_D_AKS74U_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_D_AKS74U_FIRE_SUPPRESSED"
SWEP.Recoil = 1.7

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.0153
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 40

SWEP.FirstDeployTime = 1.2
SWEP.DeployTime = 0.6
SWEP.HolsterTime = 0.5

SWEP.MuzzleVelocity = 380

SWEP.ReloadTimes = {
	base_reload = {2.43, 3.1},
	base_reloadempty = {3.27, 4.45},
}