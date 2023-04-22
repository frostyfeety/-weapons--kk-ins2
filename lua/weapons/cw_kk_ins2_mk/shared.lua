if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "HK416"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m4a1")

	SWEP.Shell = "KK_INS2_556x45"
	SWEP.ShellDelay = 0.06

	SWEP.Shell2ViewAngleAlign = {Forward = 0, Right = -90, Up = 0}
	SWEP.Shell2WorldAngleAlign = {Forward = 0, Right = -90, Up = 0}

	SWEP.AttachmentModelsVM = {
		
		["bg_foldsight"] = {model = "models/weapons/attachments/v_cw_kk_ins2_flipsight.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["cover_dn_ln"] = {model = "models/weapons/upgrades/a_standard_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cover_dn_sh_ft"] = {model = "models/weapons/upgrades/a_standard4_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cover_rt_ln"] = {model = "models/weapons/upgrades/a_standard3_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cover_rt_sh_bk"] = {model = "models/weapons/upgrades/a_standard5_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["cover_lt_ln"] = {model = "models/weapons/upgrades/a_standard2_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["cover_lt_sh_ft"] = {model = "models/weapons/upgrades/a_standard6_m4a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_sec.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_rail.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2},
		
		["kk_ins2_suppressor_se1c"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},

		["kk_ins2_vertg1rip"] = {model = "models/weapons/upgrades/a_foregrip_sec.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip", active = true},
		["kk_ins2_anpe1q15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_rail.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},

		["kk_ins2_cstm_c1ompm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s_l.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 1.2, active = true},
		
		}

	SWEP.AttachmentModelsWM = {
		
		["bg_foldsight"] = {model = "models/weapons/attachments/w_cw_kk_ins2_flipsight.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_foregrip_sec1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_an1pe1q15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_rail.mdl", pos = Vector(13, 1.2, 3.5), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false, active = true},
		["kk_ins2_su1ppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_ve1rtgrip"] = {model = "models/weapons/upgrades/w_foregrip_sec1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_c1stm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
		}
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.IronsightPos = Vector(-4.1942, -2, 0.8828)
	SWEP.IronsightAng = Vector(-0.3628, 0.0389, -40)

	SWEP.FoldSightPos = Vector(-2.4966, -2, 0.9963)
	SWEP.FoldSightAng = Vector(-1.1876, 0, 0)

	SWEP.M203Pos = Vector(-0.5168, -2, 1.149)
	SWEP.M203Ang = Vector(0.593, -0.0025, 0)

	SWEP.KKINS2KobraPos = Vector(-2.4939, -2, 0.3292)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.4945, -2, 0.5707)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-3.495, -2, 0.5751)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.4903, -3, 0.5389)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.4202, -2, 0.7473)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.4897, -1, 0.5722)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.KKINS2CSTMCMorePos = Vector(-2.495, -2, 0.5952)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.4945, -2, 0.5623)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.495, -2, 0.5425)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.5015, -2, 0.6067)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.555, -2, 0.2751)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.4903, -3, 0.5389)
	SWEP.KKINS2CSTMACOGAng = Vector()
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {500, -500}, atts = {"kk_ins2_cstm_compm4s"}},
	--{header = "Barrel", offset = {-200, -500}, atts = {"kk_ins2_suppressor_sec", "kk_ins2_hoovy"}},
	--{header = "Under", offset = {-500, 0}, atts = {"kk_ins2_vertgrip", "kk_ins2_gl_m203"}},
	{header = "Lasers", offset = {125, 400}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1100, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {500, 0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {

	base_pickup = "foregrip_ready",
	base_draw = "foregrip_draw",
	base_fire = "foregrip_fire",
	base_fire_aim = {"foregrip_iron_fire_a","foregrip_iron_fire_b","foregrip_iron_fire_c","foregrip_iron_fire_d","foregrip_iron_fire_e","foregrip_iron_fire_f"},
	base_fire_empty = "foregrip_dryfire",
	base_fire_empty_aim = "foregrip_iron_dryfire",
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
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = {"foregrip_iron_fire","foregrip_iron_fire_a","foregrip_iron_fire_b","foregrip_iron_fire_c","foregrip_iron_fire_d","foregrip_iron_fire_e","foregrip_iron_fire_f"},
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire",
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
SWEP.Category = "Мерки"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_hk416.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_hk416.mdl"

SWEP.WMPos = Vector(4.018, 1.511, -0.743)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 180
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60/700
SWEP.FireSound = "CW_KK_INS2_M4A1_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M4A1_FIRE_SUPPRESSED"
SWEP.Recoil = 1.8975

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 50

SWEP.FirstDeployTime = 2.25
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 22

SWEP.SightBGs = {main = 0, foldsight = 0}

SWEP.MuzzleVelocity = 880

SWEP.ReloadTimes = {
	base_reload = {2.9, 3.8},
	base_reloadempty = {3, 4.5},

	foregrip_reload = {2.9, 3.8},
	foregrip_reloadempty = {3, 4.5},

	gl_reload = {2.9, 3.8},
	gl_reloadempty = {3, 4.5},

	glsetup_in = {0.7, 0.7},
	glsetup_out = {0.8, 0.8},

	glsetup_reload = {2.95, 3.85},
}

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("cover_dn_ln", self:getActiveAttachmentInCategory(3) == nil)
		self:setElementActive("cover_dn_sh_ft", self.ActiveAttachments.kk_ins2_vertgrip)
		self:setElementActive("cover_rt_ln", self:getActiveAttachmentInCategory(4) == nil)
		self:setElementActive("cover_rt_sh_bk", !self.AttachmentModelsVM.cover_rt_ln.active)
		self:setElementActive("cover_lt_sh_ft", self.ActiveAttachments.kk_ins2_gl_m203)
		self:setElementActive("cover_lt_ln", !self.AttachmentModelsVM.cover_lt_sh_ft.active)
	end

	function SWEP:updateOtherParts()
		local vm = self.CW_VM
		local cycle = vm:GetCycle()

		if (self.Sequence == self.Animations.gl_turn_on or self.Sequence == self.Animations.gl_on_draw) and cycle > 0.9 then
			self:playAnim("gl_on_fire",1,1)
		end
	end
end
