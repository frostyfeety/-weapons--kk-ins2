if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

CustomizableWeaponry:registerAmmo("9x39MM", "9x39MM Rounds", 9, 39)
CustomizableWeaponry:registerAmmo("9x39MM AP", "9x39MM AP", 9, 38)
CustomizableWeaponry:registerAmmo("9x39MM MG", "9x39MM MG", 9, 37)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "АС 'Вал'"
	SWEP.CSMuzzleFlashes = false
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_556x45"
	
	SWEP.BackupSights = { // GG
		["kk_ins2_elcan"] = {
			Vector(-2.676, 4.3453, -0.8619),
			Vector(-0.4377, 0, 0)
		},
	}
	
	SWEP.ViewModelBoneMods = { // GG
		["A_LaserFlashlight"] = {
			Vector(0, 4.9836, 0), 
			Vector(0, 0, -180)
		},
	}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		--["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_ko1bra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_mag_m1a1_30"] = {model = "models/weapons/upgrades/a_magazine_asval_30.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},		
		}
	
	SWEP.AttachmentModelsWM = {
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		--["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_k1obra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}
	
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.IronsightPos = Vector(-1.4654, -2, 1.2)
	SWEP.IronsightAng = Vector()
	
	SWEP.KKINS2KobraPos = Vector(-2.4654, 3, 0.2)
	SWEP.KKINS2KobraAng = Vector()


	SWEP.KKINS2EoTechPos = Vector(-2.6705, -3, 0.2863)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.6674, -3, 0.2717)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.6744, 0, 0.0085)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.6244, -3, 0.3696)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.6719, -3.0014, 0.2909)
	SWEP.KKINS2MagnifierAng = Vector(-0.1, 0, 0)

	SWEP.CustomizationMenuScale = 0.016
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_kobra"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_hoovy"}},
	--{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip"}},
	--{header = "Lasers", offset = {100, 350}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_draw",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_mm = "base_reload_ext",
	base_reload_empty = "base_reloadempty",
	base_reload_empty_mm = "base_reloadempty_ext",
	base_idle = "blend_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	foregrip_pickup = "foregrip_draw",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_mm = "foregrip_reload_ext",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_reload_empty_mm = "foregrip_reloadempty_ext",
	foregrip_idle = "blend_idle_foregrip",
	foregrip_holster = "foregrip_holster",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",
}

SWEP.SpeedDec = 40

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "АС 'ВАЛ'"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_asval.mdl"
SWEP.WorldModel		= "models/weapons/w_asval.mdl"

SWEP.WMPos = Vector(2.772, 0.924, -0.137)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 20*5
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x39MM"

SWEP.FireDelay = 60/900
SWEP.FireSound = "CW_KK_INS2_AK105_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_AK105_FIRE_SUPPRESSED"
SWEP.Recoil = 1.45

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 40

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.SnapToIdlePostReload = false

SWEP.FirstDeployTime = 1.5
SWEP.WeaponLength = 20

SWEP.MuzzleVelocity = 295

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.1},
	base_reloadempty = {2.3, 4.6},
	
	foregrip_reload = {2.3, 3.1},
	foregrip_reloadempty = {2.3, 4.6},
}
