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
	SWEP.PrintName = "ИЖ-43"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.NoShells = true
	SWEP.Shell = "KK_INS2_12guage"
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.IronsightPos = Vector(-1.754, -2, 0.92)
	SWEP.IronsightAng = Vector(0.75, 0, 0)
	SWEP.AttachmentModelsVM = {
	}

	SWEP.AttachmentModelsWM = {
	}
	SWEP.CustomizationMenuScale = 0.015
end

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.MuzzleEffectWorld = "muzzleflash_shotgun"

SWEP.Attachments = {
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_last = "base_firelast",
	base_fire_aim = "iron_fire",
	base_fire_last_aim = "iron_firelast",
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

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi","2burst"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Старье"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_doublebarrel.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_doublebarrel.mdl"

SWEP.WMPos = Vector(3.263, 1.235, -2.545)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 2
SWEP.Primary.DefaultClip	= 2*5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.0001
SWEP.FireSound = "CW_KK_INS2_M590_FIRE"
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
SWEP.ClumpSpread = 0.012
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.8
SWEP.Shots = 9
SWEP.Damage = 18

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.WeaponLength = 18

SWEP.MuzzleVelocity = 244

SWEP.ReloadTimes = {
	base_reload = {4, 4.1},
	base_reloadempty = {5, 5.5},
}