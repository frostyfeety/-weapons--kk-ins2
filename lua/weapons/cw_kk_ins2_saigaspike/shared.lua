if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

CustomizableWeaponry:registerAmmo("12 Gauge Slug", "12 Gauge Slug", 12, 71)
CustomizableWeaponry:registerAmmo("12 Gauge Flechette", "12 Gauge Flechette", 12, 71)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Сайга-12 Спайк"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.NoShells = false
	SWEP.Shell = "KK_INS2_12guage"
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_iron"] = {model = "models/weapons/customupgrades/a_standard_saiga_spike.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(0.5, 0.5, 0.5), merge = true, active = true},
["kk_ins2_anpe1q15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(), angle = Angle(), size = Vector(0.5, 0.5, 0.5), merge = true, active = true},

		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_iron"] = {model = "models/weapons/customupgrades/w_standard_saiga_spike.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
  ["kk_ins2_anpe1q15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_shotgun.mdl", pos = Vector(-5.5, -0.5, 1.5), angle = Angle(0.5, 0.5, -90), size = Vector(0.5, 0.5, 0.5), merge = false, active = true},

		}

	SWEP.IronsightPos = Vector(-2.425, -2.5, 0.035)
	SWEP.IronsightAng = Vector(0.3, 0.015, 0)

	SWEP.KKINS2KobraPos = Vector(-2.425, -2.5, 0)
	SWEP.KKINS2KobraAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2EoTechAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2AimpointAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.4232, -2.5, 0.0665)
	SWEP.KKINS2MagnifierAng = Vector(0, 0, 0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2CSTMCMoreAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2CSTMBarskaAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0.02, 0.015, 0)
	
	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.425, -2.5, 0.1)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0.02, 0.015, 0)

	SWEP.CustomizationMenuScale = 0.015
end

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffectWorld = "muzzleflash_shotgun"


SWEP.Attachments = {
	--{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_kobra", "kk_ins2_eotech", "kk_ins2_aimpoint", "kk_ins2_cstm_cmore", "kk_ins2_cstm_barska", "kk_ins2_cstm_microt1", "kk_ins2_cstm_eotechxps", "kk_ins2_cstm_compm4s"}},
	{header = "Lasers", offset = {125, 400}, atts = {"kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--{header = "Skin", offset = {-200, 0}, atts = {"kk_ins2_saigaspike_syndicate", "kk_ins2_saigaspike_joke"}},
	--["+use"] = {header = "Sight Contract", offset = {400, 0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
}

SWEP.SpeedDec = 15

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/saigaspike/v_saiga_spike.mdl"
SWEP.WorldModel		= "models/weapons/saigaspike/w_saiga_spike.mdl"

SWEP.WMPos = Vector(4.763, 0.935, -1.945)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8*6
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.25
SWEP.FireSound = "CW_KK_INS2_SPIKE_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M590_FIRE_SUPPRESSED"
SWEP.Recoil = 3

SWEP.Chamberable = false
SWEP.SnapToIdlePostReload = false
SWEP.ShotgunReload = false
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.3
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.9
SWEP.MaxSpreadInc = 0.06
SWEP.ClumpSpread = 0.023
SWEP.SpreadPerShot = 0.05
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 9
SWEP.Damage = 10

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 18

SWEP.MuzzleVelocity = 260

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},

	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35}
}

if CLIENT then
	function SWEP:updateStandardParts()
		if 
		self.ActiveAttachments.kk_ins2_aimpoint or
		self.ActiveAttachments.kk_ins2_magnifier or
		self.ActiveAttachments.kk_ins2_eotech or
		self.ActiveAttachments.kk_ins2_kobra or
		self.ActiveAttachments.kk_ins2_cstm_cmore or
		self.ActiveAttachments.kk_ins2_cstm_compm4s or
		self.ActiveAttachments.kk_ins2_cstm_microt1 or
		self.ActiveAttachments.kk_ins2_cstm_acog or
		self.ActiveAttachments.kk_ins2_cstm_barska or
		self.ActiveAttachments.kk_ins2_cstm_eotechxps
		then
			self.AttachmentModelsVM.kk_ins2_optic_iron.active = false
		else
			self.AttachmentModelsVM.kk_ins2_optic_iron.active = true
		end
	end
end

if CLIENT then
	local att
	local muz = {}

	function SWEP:getMuzzlePosition()

		if self.MuzzleAttachment != 0 then
			return self.CW_VM:GetAttachment(self.MuzzleAttachment)
		end

		muz.Pos = self.Owner:EyePos()
		muz.Ang = self.Owner:EyeAngles()
		return muz
	end
end

if CLIENT then
	local att = CustomizableWeaponry.registeredAttachmentsSKey["kk_ins2_saigaspike_joke"]
	local att2 = CustomizableWeaponry.registeredAttachmentsSKey["kk_ins2_saigaspike_syndicate"]
	
	CustomizableWeaponry_KK.ins2.welementThink:add("cw_kk_ins2_saigaspike", function(wep, welement)
		if att then
			if wep.ActiveAttachments[att.name] then
				if att.activeWM then
					if welement:GetModel() != att.activeWM then
						welement:SetModel(att.activeWM)
					end
				end
			elseif wep.ActiveAttachments[att2.name] then
				if att2.activeWM then
					if welement:GetModel() != att2.activeWM then
						welement:SetModel(att2.activeWM)
					end
				end
			else 
				if att.origWM then
					if welement:GetModel() != att.origWM then
						welement:SetModel(att.origWM)
					end
				end
			end
		end
	end)
end