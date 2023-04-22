if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")
SWEP.TSGlass = Material("models/weapons/nam/optics/lense_rt")
SWEP.magType = "arMag"

CustomizableWeaponry:registerAmmo("7.62x54MMR AP", "7.62x54MMR AP", 762, 55)
CustomizableWeaponry:registerAmmo("7.62x54MMR MG", "7.62x54MMR MG", 762, 56)

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "СВДМ"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	SWEP.AimBreathingEnabled = true
	SWEP.Shell = "KK_INS2_762x54"
	SWEP.ShellDelay = 0.03
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_04.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_optic_ra1il"] = {model = "models/weapons/upgrades/a_modkit_04.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_scope_nam_pso"] = {model = "models/weapons/upgrades/a_pso1.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_scope_nam_pso1"] = {model = "models/weapons/upgrades/a_pso1.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
	
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_modkit_4.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_optic_r1ail"] = {model = "models/weapons/upgrades/w_modkit_4.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		["kk_ins2_scope_nam_pso"] = {model = "models/weapons/upgrades/w_pso1.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_scope_nam_ps1"] = {model = "models/weapons/upgrades/w_pso1.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
	
		}

	SWEP.IronSightPos = Vector(-2.0341, 1, 0.55)
	SWEP.IronSightAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.0341, -1, -0.3)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2KobraPos = Vector(-2.0341, -2, -0.3)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.0141, -1, -0.45)
	SWEP.KKINS2ElcanAng = Vector()
	SWEP.KKINS2NAMPSOPos = Vector(-1.9652, 2, -0.0041)
	SWEP.KKINS2NAMPSOAng = Vector(0, 0, 0)
	SWEP.KKINS2PO4Pos = Vector(-1.9641, -1, 0)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2ScopeMosinPos = Vector(-2.0001, 2, 0.2)
	SWEP.KKINS2ScopeMosinAng = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.0141, -1, -0.27)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.KKINS2CSTMCMorePos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2CSTMCMoreAng = Vector()

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2CSTMBarskaAng = Vector()

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2CSTMMicroT1Ang = Vector()

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector()

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.0341, -1, -0.25)
	SWEP.KKINS2CSTMCompM4SAng = Vector()

	SWEP.KKINS2CSTMACOGPos = Vector(-2.0141, -1, -0.35)
	SWEP.KKINS2CSTMACOGAng = Vector()

	SWEP.CustomizationMenuScale = 0.017
end

SWEP.MuzzleEffect = "muzzleflash_svd"
SWEP.MuzzleEffectWorld = "muzzleflash_svd"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -500}, atts = {"kk_ins2_scope_nam_pso"}},
	--{header = "Barrel", offset = {-200, -500}, atts = {"kk_ins2_pbs1"}},
	--{header = "Under", offset = {-500, 0}, atts = {"kk_ins2_bipod", "kk_ins2_vertgrip"}},
	--{header = "Lasers", offset = {125, 300}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, -50}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {400, -50}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "empty_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_last = "base_firelast",
	base_fire_last_aim = "iron_firelast",
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_idle_empty = "empty_idle",
	base_holster = "base_holster",
	base_holster_empty = "empty_holster",
	base_sprint = "base_sprint",
	base_sprint_empty = "empty_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "empty_down",
	base_safe_empty_aim = "iron_empty_down",
	base_crawl = "base_crawl",
	base_crawl_empty = "empty_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_draw_empty = "foregrip_empty_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire_b",
	foregrip_fire_last = "foregrip_firelast",
	foregrip_fire_last_aim = "foregrip_iron_firelast_b",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire_b",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "foregrip_holster",
	foregrip_idle_empty = "foregrip_empty_idle",
	foregrip_holster = "foregrip_holster",
	foregrip_holster_empty = "foregrip_empty_holster",
	foregrip_sprint = "foregrip_sprint",
	foregrip_sprint_empty = "foregrip_empty_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_safe_empty = "foregrip_empty_down",
	foregrip_safe_empty_aim = "foregrip_empty_iron_down",
	foregrip_crawl = "foregrip_crawl",
	foregrip_crawl_empty = "foregrip_empty_crawl",

	bipod_in = "deployed_in",
	bipod_in_empty = "deployed_empty_in",
	bipod_fire = "deployed_fire",
	bipod_fire_last = "deployed_firelast",
	bipod_fire_empty = {"deployed_dryfire","deployed_empty_dryfire"},
	bipod_fire_aim = "deployed_iron_fire",
	bipod_fire_last_aim = "deployed_iron_fire_last",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reloadempty",
	bipod_out = "deployed_out",
	bipod_out_empty = "deployed_empty_out",

}

SWEP.SpeedDec = 40

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "smg"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "SVDN"

SWEP.Author			= "Lt. Taylor"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_svd.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_svd.mdl"

SWEP.WMPos = Vector(5, .79, -1)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 10*5
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireDelay = 60/60
SWEP.FireSound = "CW_KK_INS2_SVD_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_SVD_FIRE_SUPPRESSED"
SWEP.Recoil = 2.8

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 1
SWEP.SpreadCooldown = 1.9
SWEP.Shots = 1
SWEP.Damage = 90

SWEP.FirstDeployTime = 1.5
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.RecoilToSpread = 2

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.WeaponLength = 22

SWEP.KK_INS2_EmptyIdle = true

SWEP.MuzzleVelocity = 830

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.3},
	base_reloadempty = {2.3, 4.6},

	foregrip_reload = {2.3, 3.3},
	foregrip_reloadempty = {2.3, 4.6},

	deployed_reload = {2.3, 3.3},
	deployed_reloadempty = {2.3, 4.6},
}
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