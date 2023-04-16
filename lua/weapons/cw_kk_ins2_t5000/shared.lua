if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "Осирис T-5000"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x51"
	SWEP.NoShells = true
	SWEP.DrawAmmo = false
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.AttachmentModelsVM = {
		["cw_menu_muzzle"] = {model = "models/maxofs2d/cube_tool.mdl", bone = "Weapon", pos = Vector(0.048, 15, 1.325), angle = Angle(0, -90, 0), size = Vector(), active = true},
		
		
		["kk_ins2_suppressor_sec"] = {model = "models/weapons/upgrades/a_suppressor_sec2.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
["kk_ins2_scope_m401"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		}

	SWEP.AttachmentModelsWM = {
		
		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		
		["kk_ins2_scope_m401"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		}

	SWEP.ForegripOverridePos = {
		["none"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(), angle = Angle()}
		},

		["LeftHandFix"] = {
			["L Clavicle"] = {scale = Vector(1, 1, 1), pos = Vector(-100, 0, 0), angle = Angle()}
		},
	}

	SWEP.IronsightPos = Vector(-0.6353, -2, .189)
	SWEP.IronsightAng = Vector(0.65, -0.007, 0)

	SWEP.KKINS2KobraPos = Vector(-2.6353, -2, .239)
	SWEP.KKINS2KobraAng = Vector(0.02, 0.01, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2EoTechAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2AimpointAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2ScopeM40Pos = Vector(-2.8131, 0, 0.6989)
	SWEP.KKINS2ScopeM40Ang = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.6295, -6, .29)
	SWEP.KKINS2ElcanAng = Vector(0, 0, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.5703, -6, .493)
	SWEP.KKINS2PO4Ang = Vector(0, 0.02, 0)

	SWEP.KKINS2ScopeMosinPos = Vector(-2.6064, -6, .836)
	SWEP.KKINS2ScopeMosinAng = Vector(0, 0.02, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.6295, -2, .389)
	SWEP.KKINS2MagnifierAng = Vector(0, 0, 0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2CSTMCMoreAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2CSTMBarskaAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.6353, -2, .389)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0.02, 0.015, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.6295, -6, .29)
	SWEP.KKINS2CSTMACOGAng = Vector(0, 0, 0)

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_sv98"
SWEP.MuzzleEffectWorld = "muzzleflash_sv98"

SWEP.Attachments = {
	{header = "Прицел", offset = {500, -450}, atts = {"kk_ins2_scope_m40"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_suppressor_sec"}},
	--{header = "Lasers", offset = {400, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1100, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--{header = "Skin", offset = {200, 0}, atts = {"kk_ins2_t5000_rage"}},
	--["+use"] = {header = "Sight Contract", offset = {500, -0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire_start",
	base_fire_aim = "iron_fire_start",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_bolt = "base_fire_end",
	base_bolt_aim = "iron_fire_end",
	base_insert = "reload_insert",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
}

SWEP.SpeedDec = 40

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Донат"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/t5000/v_t5000.mdl"
SWEP.WorldModel		= "models/weapons/t5000/w_t5000.mdl"

SWEP.WMPos = Vector(4.036, 0.986, -1.213)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10*4
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.3 // 60/37
SWEP.FireSound = "CW_KK_INS2_T5000_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_T5000_FIRE_SUPPRESSED"
SWEP.Recoil = 3.1

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.5
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 2
SWEP.Shots = 1
SWEP.Damage = 150

SWEP.FirstDeployTime = 3
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.Chamberable = true
SWEP.SnapToIdlePostReload = false
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.2
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.WeaponLength = 38

SWEP.MuzzleVelocity = 865

SWEP.ReloadTimes = {
	base_fire_end = {14/30, 1.5},
	iron_fire_end = {19/28.5, 1.7},

	base_reload = {2.3, 3.3},
	base_reloadempty = {2.3, 4.6},
}



if CLIENT then
	local att
	local muz = {}

	function SWEP:getMuzzlePosition()
	
		if self.MuzzleAttachment != 0 then
			return self.CW_VM:GetAttachment(self.MuzzleAttachment)
		end
		
		if self.CustomizeMenuAlpha > 0 then
			muz.Pos = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetPos()
			muz.Ang = self.AttachmentModelsVM.cw_menu_muzzle.ent:GetAngles()
			return muz
		end

		muz.Pos = self.Owner:EyePos()
		muz.Ang = self.Owner:EyeAngles()
		return muz
	end
end

if CLIENT then
	local old, x, y, ang
	local reticle = surface.GetTextureID("sprites/scope_leo")

	local lens = surface.GetTextureID("cw2/gui/lense")
	local lensMat = Material("cw2/gui/lense")
	local cd, alpha = {}, 0.5
	local Ini = true

	-- render target var setup
	cd.x = 0
	cd.y = 0
	cd.w = 512
	cd.h = 512
	cd.fov = 3
	cd.drawviewmodel = false
	cd.drawhud = false
	cd.dopostprocess = false

	function SWEP:RenderTargetFunc()
		local complexTelescopics = self:canUseComplexTelescopics()
		
		-- if we don't have complex telescopics enabled, don't do anything complex, and just set the texture of the lens to a fallback 'lens' texture
		if not complexTelescopics then
			self.TSGlass:SetTexture("$basetexture", lensMat:GetTexture("$basetexture"))
			return
		end
		
		if self.dt.State == CW_AIMING then
			alpha = math.Approach(alpha, 0, FrameTime() * 5)
		else
			alpha = math.Approach(alpha, 1, FrameTime() * 5)
		end
		
		x, y = ScrW(), ScrH()
		old = render.GetRenderTarget()

		ang = self:getTelescopeAngles()
		
		if self.ViewModelFlip then
			ang.r = -self.BlendAng.z
		else
			ang.r = self.BlendAng.z
		end
		
		local size = self:getRenderTargetSize()

		cd.w = size
		cd.h = size
		cd.angles = ang
		cd.origin = self.Owner:GetShootPos()
		render.SetRenderTarget(self.ScopeRT)
		render.SetViewPort(0, 0, size, size)
			if alpha < 1 or Ini then
				render.RenderView(cd)
				Ini = false
			end
			
			ang = self.Owner:EyeAngles()
			ang.p = ang.p + self.BlendAng.x
			ang.y = ang.y + self.BlendAng.y
			ang.r = ang.r + self.BlendAng.z
			ang = -ang:Forward()
			
			local light = render.ComputeLighting(self.Owner:GetShootPos(), ang)
			
			cam.Start2D()
				surface.SetDrawColor(255, 255, 255, 255)
				surface.SetTexture(reticle)
				surface.DrawTexturedRect(0, 0, size, size)
				
				surface.SetDrawColor(150 * light[1], 150 * light[2], 150 * light[3], 255 * alpha)
				surface.SetTexture(lens)
				surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size, size, 90)
			cam.End2D()
		render.SetViewPort(0, 0, x, y)
		render.SetRenderTarget(old)
		
		if self.TSGlass then
			self.TSGlass:SetTexture("$basetexture", self.ScopeRT)
		end
	end
end