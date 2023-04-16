if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-12 'Мясник'"
	SWEP.CSMuzzleFlashes = true
	SWEP.MuzzleVelocity = 745
	SWEP.AimBreathingEnabled = true
	
	SWEP.AlternativePos = Vector(-1, 1, -2)

	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_f_rpk74m")
	
	SWEP.Shell = "KK_INS2_545x39"
	SWEP.ShellDelay = 0.06
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2},
		
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_kobra1"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2,active=true},
		
		}
	
	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_kobra1"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(15, 0, 3.58), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false,active=true},
		
		}

	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.IronsightPos = Vector(-3.645, 3, 0.21)
	SWEP.IronsightAng = Vector(-0.2, 0.02, -30)

	SWEP.KKINS2KobraPos = Vector(-2.44,4, 0.35)
	SWEP.KKINS2KobraAng = Vector(0, 0, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.3125, 0, -0.945)
	SWEP.KKINS2EoTechAng = Vector(0, -0.125, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.3125, 0, -0.925)
	SWEP.KKINS2AimpointAng = Vector(0, -0.125, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.319, 0, -1.055)
	SWEP.KKINS2ElcanAng = Vector(0, -0.125, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.255, 0, -0.85)
	SWEP.KKINS2PO4Ang = Vector(0, -0.125, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.31, 0, -0.955)
	SWEP.KKINS2MagnifierAng = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMCMorePos = Vector(-2.3125, 0, -0.935)
	SWEP.KKINS2CSTMCMoreAng = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.3125, 0, -0.95)
	SWEP.KKINS2CSTMBarskaAng = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.3125, 0, -0.9255)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.3125, 0, -0.92)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.3125, 0, -0.92)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0, -0.125, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.32, 0, -1.055)
	SWEP.KKINS2CSTMACOGAng = Vector(0, -0.125, 0)
end

SWEP.MuzzleEffect = "muzzleflash_ak74"
SWEP.MuzzleEffectWorld = "muzzleflash_ak74"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_kobra"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_f_tgpa"}},
	{header = "Lasers", offset = {200, 400}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_Sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire_1","iron_fire_2","iron_fire_3","iron_fire_4"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_idle",
	base_safe_aim = "base_idle",
	base_crawl = "base_crawl",
	
	bipod_in = "deployed_in",
	bipod_fire = "deployed_fire",
	bipod_fire_aim = {"deployed_iron_fire_1","deployed_iron_fire_2"},
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reloadempty",
	bipod_firemode = "deployed_fireselect",
	bipod_firemode_aim = "deployed_iron_fireselect",
	bipod_out = "deployed_out",
}

SWEP.SpeedDec = 30

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_ak12.mdl"
SWEP.WorldModel		= "models/weapons/w_ak12.mdl"

SWEP.WMPos = Vector(5.227, 0.66, -1.497)
SWEP.WMAng = Angle(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 96
SWEP.Primary.DefaultClip	= 96*3
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/700
SWEP.FireSound = "CW_KK_INS2_RPK74M_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_RPK74M_FIRE_SUPPRESSED"
SWEP.Recoil = 1.5

SWEP.HipSpread = 0.0429
SWEP.AimSpread = 0.0039
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.049
SWEP.SpreadPerShot = 0.0069
SWEP.SpreadCooldown = 0.129
SWEP.Shots = 1
SWEP.Damage = 55

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.9
SWEP.HolsterTime = 0.7

SWEP.BipodDeployTime = 1.5
SWEP.BipodUndeployTime = 1.9

SWEP.BipodInstalled = false
SWEP.WeaponLength = 26

SWEP.ReloadTimes = {
	base_reload = {3.4, 4.5},
	base_reloadempty = {3.4, 6},
	
	deployed_reload = {116/30, 4.8},
	deployed_reloadempty = {116/30, 6},
}