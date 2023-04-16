if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

CustomizableWeaponry:registerAmmo("9x21MM", "9x21MM Rounds", 9, 21)
CustomizableWeaponry:registerAmmo("9x21MM MG", "9x21MM MG Rounds", 9, 21)
CustomizableWeaponry:registerAmmo("9x21MM AP", "9x21MM AP Rounds", 9, 21)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "СР-2 Вереск"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_9x19"
	SWEP.ShellDelay = 0.15
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
	SWEP.ShellWorldAngleAlign = {Forward = 0, Right = 0, Up = 180}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_04.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kob1ra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_4.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kob1ra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		}

	SWEP.IronsightPos = Vector(-1.265, -2, 1.28)
	SWEP.IronsightAng = Vector(0, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.165, -2, 0.38)
	SWEP.KKINS2KobraAng = Vector()
	
	SWEP.KKINS2EoTechPos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.165, -3.5, 0.1)
	SWEP.KKINS2ElcanAng = Vector()
	
	SWEP.KKINS2PO4Pos = Vector(-2.120, -5, 0.5)
	SWEP.KKINS2PO4Ang = Vector()
	
	SWEP.KKINS2MagnifierPos = Vector(-2.165, -4, 0.40)
	SWEP.KKINS2MagnifierAng = Vector()
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.165, -2, 0.45)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.165, -4, 0.15)
	SWEP.KKINS2CSTMACOGAng = Vector()

end

SWEP.MuzzleEffect = "muzzleflash_smg_bizon"
SWEP.MuzzleEffectWorld = "muzzleflash_smg_bizon"

SWEP.Attachments = {
	{header = "Прицел", offset = {300, -500}, atts = {"kk_ins2_kobra"}},
	--{header = "Barrel", offset = {-300, -500}, atts = {"kk_ins2_suppressor_ins"}},
	--{header = "Lasers", offset = {-500, 0}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {800, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {300, 0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {0, 500}, atts = {"am_magnum", "am_matchgrade"}}
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
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "СР-2 'Вереск'"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_veresk.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_veresk.mdl"

SWEP.WMPos = Vector(4.006, 1.789, -1.117)
SWEP.WMAng = Vector(-14, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30*4
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x21MM"

SWEP.FireDelay = 60/900
SWEP.FireSound = "CW_KK_INS2_MP40_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_MP40_FIRE_SUPPRESSED"
SWEP.Recoil = 1.27

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 35

SWEP.FirstDeployTime = 1.7
SWEP.DeployTime = 0.6
SWEP.HolsterTime = 0.5

SWEP.Chamberable = false

SWEP.WeaponLength = 16 // this things gotta b longer than MP5k

SWEP.KK_INS2_EmptyIdle = true

SWEP.ReloadTimes = {
	base_reload = {2.2, 2.95},
	base_reloadempty = {3.2, 4.55}
}

SWEP.MuzzleVelocity = 415