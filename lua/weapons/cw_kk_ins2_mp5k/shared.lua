if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "smgMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "HK MP5K"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_mp5")

	SWEP.Shell = "KK_INS2_9x19"

	SWEP.ShellViewAngleAlign = {Forward = 0, Right = 0, Up = 180}
	SWEP.ShellWorldAngleAlign = {Forward = 0, Right = 0, Up = 180}

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_05.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/a_modkit_05.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},

		["kk_counter"] = {model = "models/weapons/stattrack.mdl", bone = "Weapon", pos = Vector(0.256, -1.492, 0.4), angle = Angle(0, -90, 2), size = Vector(0.8, 0.8, 0.8)},
		["kk_textbox"] = {model = "models/weapons/uid.mdl", bone = "Weapon", pos = Vector(0.41, -4.783, 0.549), angle = Angle(0, -90, 2), size = Vector(0.8, 0.8, 0.8)},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimp2x_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/a_optic_elcan_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/a_optic_eotech_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/a_optic_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85, active = true},
		["kk_ins2_cstm_compm41s"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_compm4s_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85, active = true},
		
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_microt1_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_eotechxps_m.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},

		-- ["ani_body"] = {model = "models/weapons/v_cw_kk_ins2_cstm_mp5a4.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, hideVM = true, active = true},
	}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_5.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
["kk_ins2_optic_rai11"] = {model = "models/weapons/upgrades/w_modkit_5.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},

		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_elcan"] = {model = "models/weapons/upgrades/w_elcan.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_kobra"] = {model = "models/weapons/upgrades/w_kobra.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_cstm_cmore"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_cmore.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_compm4s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_cstm_compm41s"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
		["kk_ins2_cstm_microt1"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_eotechxps"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_eotechxps.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
	}
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.IronsightPos = Vector(-0.308, -2, 0.5)
	SWEP.IronsightAng = Vector(1.55, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.324, -3, 0.1196)
	SWEP.KKINS2KobraAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.3175, -3, 0.1718)
	SWEP.KKINS2EoTechAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.308, -2, 0.2041)
	SWEP.KKINS2AimpointAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.3139, -3, -0.1056)
	SWEP.KKINS2ElcanAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.2636, -4, 0.2343)
	SWEP.KKINS2PO4Ang = Vector(-1.4, 0, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.3103, -3, 0.1692)
	SWEP.KKINS2MagnifierAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMCMorePos = Vector(-2.308, -2, 0.2041)
	SWEP.KKINS2CSTMCMoreAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.3175, -3, 0.1718)
	SWEP.KKINS2CSTMBarskaAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.308, -2, 0.2041)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.3175, -3, 0.1718)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.308, -2, 0.2041)
	SWEP.KKINS2CSTMCompM4SAng = Vector(-1.4, 0, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.3139, -3, -0.1056)
	SWEP.KKINS2CSTMACOGAng = Vector(-1.4, 0, 0)

	SWEP.CustomizationMenuScale = 0.010
end

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.MuzzleEffectWorld = "muzzleflash_mp5"

SWEP.WeaponLength = 16

SWEP.Attachments = {
	{header = "Sight", offset = {300, -700}, atts = {"kk_ins2_cstm_compm4s"}},
	}

if CustomizableWeaponry_KK.HOME then
	-- table.insert(SWEP.Attachments, {header = "Skill1", offset = {2100, -800}, atts = {"kk_aimbot"}})
	-- table.insert(SWEP.Attachments, {header = "Skill2", offset = {2100, -400}, atts = {"kk_wallhaq"}})
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {2100, 0}, atts = {"kk_counter"}})
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {2100, 400}, atts = {"kk_textbox"}})
end

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
SWEP.Category = "Мерки"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_mp5kpdw.mdl"
SWEP.WorldModel		= "models/weapons/w_mp5k.mdl"

SWEP.WMPos = Vector(5.918, 1.511, -01.743)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30*6
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60/900
SWEP.FireSound = "CW_KK_INS2_MP5K_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_MP5K_FIRE_SUPPRESSED"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.0153
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 45

SWEP.FirstDeployTime = 1.2
SWEP.DeployTime = 0.6
SWEP.HolsterTime = 0.5

SWEP.MuzzleVelocity = 375

SWEP.ReloadTimes = {
	base_reload = {2.43, 3.1},
	base_reloadempty = {3.27, 4.45},
}

if CLIENT then
	function SWEP:nametagElementRender()
		if not self.allocatedMags then
			return
		end

		local ent = self.AttachmentModelsVM.kk_textbox.ent

		local mags = 0

		for k,v in pairs(self.allocatedMags) do
			mags = mags + v
		end

		ent._KKCSGOOFFSET = 0
		ent._KKCSGOTXT = string.format(
			"Ammo: %02d/%02d:%03d/%04d",
			self:Clip1(),
			#self.allocatedMags,
			mags,
			self.Owner:GetAmmoCount(self.Primary.Ammo)
		)
	end
end
