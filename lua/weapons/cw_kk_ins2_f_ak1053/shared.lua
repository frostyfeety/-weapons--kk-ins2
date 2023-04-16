if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-105 'Специалист'"
	SWEP.CSMuzzleFlashes = true
	SWEP.MuzzleVelocity = 840
	SWEP.AimBreathingEnabled = true
	
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_f_ak105")
	
	SWEP.Shell = "KK_INS2_545x39"
	SWEP.ShellDelay = 0.06
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/f_kv04s_2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_f_tgpa"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(0, 2.05, 0.05), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), attachment = "Suppressor", merge = false},
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/f_vertgrip_3.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2},
		
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/f_kv04s_2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(0, 2.05, 0.05), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), attachment = "Suppressor", merge = false,active=true},
		["kk_ins2_vertgrip1"] = {model = "models/weapons/upgrades/f_vertgrip_3.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_kobra1"] = {model = "models/weapons/upgrades/a_optic_kobra_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2,active=true},
		
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_f_kv04s_2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_f_tgpa"] = {model = "models/weapons/upgrades/w_sil_ins1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_f_vertgrip_3.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(-32.0,0.0,-14.7), angle = Angle(), size = Vector(1, 1, 1), merge = false},
		
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/w_f_kv04s_2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(20.8845, 0, 2.9), angle = Angle(), size = Vector(0.6, 0.7, 0.7), merge = false,active=true},
		["kk_ins2_vertgrip1"] = {model = "models/weapons/upgrades/w_f_vertgrip_3.mdl", pos = Vector(9.0,0.0,2.55), angle = Angle(), size = Vector(1, 1, 1), merge = false,active=true},
		["kk_ins2_kobra1"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(-33.0,0.0,-14.35), angle = Angle(), size = Vector(1, 1, 1), merge = false,active=true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(18, 0, 4.1), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false,active=true},
		
		}

	SWEP.IronsightPos = Vector(-3.645, 3, 0.21)
	SWEP.IronsightAng = Vector(-0.2, 0.02, -30)

	SWEP.KKINS2KobraPos = Vector(-2.23, 2, -0.75)
	SWEP.KKINS2KobraAng = Vector(0, 0, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.235, 0, -0.7)
	SWEP.KKINS2EoTechAng = Vector(0, 0, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.23, 0, -0.7)
	SWEP.KKINS2AimpointAng = Vector(0, 0, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.237, 0, -0.825)
	SWEP.KKINS2ElcanAng = Vector(0, 0, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.18, 0, -0.62)
	SWEP.KKINS2PO4Ang = Vector(0, 0, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.235, 0, -0.7225)
	SWEP.KKINS2MagnifierAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMCMorePos = Vector(-2.23, 0, -0.7)
	SWEP.KKINS2CSTMCMoreAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.235, 0, -0.7)
	SWEP.KKINS2CSTMBarskaAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.225, 0, -0.7)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0, 0, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.23, 0, -0.7)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.23, 0, -0.7)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.237, 0, -0.8225)
	SWEP.KKINS2CSTMACOGAng = Vector(0, 0, 0)
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_kobra"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_f_tgpa"}},
	--{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_vertgrip"}},
	{header = "Lasers", offset = {100, 300}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {400, -0}, atts = {"kk_ins2_Sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {

	
	base_pickup = "foregrip_ready",
	base_draw = "foregrip_draw",
	base_fire = "foregrip_fire",
	base_fire_aim = {"foregrip_iron_fire", "foregrip_iron_fire_2"},
	base_fire_empty = "foregrip_dryfire",
	basefire_empty_aim = "foregrip_iron_dryfire",
	base_reload = "foregrip_reload",
	base_reload_empty = "foregrip_reloadempty",
	base_idle = "foregrip_holster",
	baseholster = "foregrip_holster",
	base_firemode = "foregrip_fireselect",
	basefiremode_aim = "foregrip_iron_fireselect",
	base_sprint = "foregrip_sprint",
	base_safe = "foregrip_down",
	base_safe_aim = "foregrip_iron_down",
	base_crawl = "foregrip_crawl",
}

SWEP.Spawnable			= false
SWEP.AdminSpawnable		= false

SWEP.SpeedDec = 30

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_f_ak105.mdl"
SWEP.WorldModel		= "models/weapons/w_f_ak105.mdl"

SWEP.WMPos =Vector(4.824, 1.36, -1.188)
SWEP.WMAng = Angle(-12, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 180
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/600
SWEP.FireSound = "CW_KK_INS2_AK105_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_AK105_FIRE_SUPPRESSED"
SWEP.Recoil = 2.0

SWEP.HipSpread = 0.0375
SWEP.AimSpread = 0.0025
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.0045
SWEP.SpreadCooldown = 0.075
SWEP.Shots = 1
SWEP.Damage = 55

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.FirstDeployTime = 2
SWEP.WeaponLength = 16

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},
	
	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35}
}