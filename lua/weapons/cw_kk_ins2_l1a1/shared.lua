if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "brMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "L1A1 SLR"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_l1a1")

	SWEP.Shell = "KK_INS2_762x51"

	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_iron"] = {model = "models/weapons/upgrades/a_standard_l1a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_l1a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_mag_l1a1_20"] = {model = "models/weapons/upgrades/a_magazine_l1a1_20.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, retSizeMult = 0.85},
		["kk_ins2_cstm_acog1"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_acog_m.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), active = true, merge = true, retSizeMult = 0.85},
		
		["kk_ins2_o1tic_iron"] = {model = "models/weapons/upgrades/a_standard_l1a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_op1tic_rail"] = {model = "models/weapons/upgrades/a_modkit_l1a1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},

		["kk_ins2_mag1_l1a1_20"] = {model = "models/weapons/upgrades/a_magazine_l1a1_20.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_cstm_acog"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_cstm_acog1"] = {model = "models/weapons/attachments/w_cw_kk_ins2_cstm_acog.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true, active = true},
		
		}
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)

	SWEP.IronsightPos = Vector(-2.455, -2, 0.4526)
	SWEP.IronsightAng = Vector(0.6052, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.4696, -2, -0.3519)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.4707, -2, -0.2911)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.47, -2, -0.25)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.4738, -2, -0.3768)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.4123, -2, -0.177)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2ScopeMosinPos = Vector(-2.4489, -1, -0.1553)
	SWEP.KKINS2ScopeMosinAng = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.47, -2, -0.2819)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.CustomizationMenuScale = 0.019
end

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.MuzzleEffectWorld = "muzzleflash_1"

SWEP.Attachments = {
	{header = "Прицел", offset = {600, -500}, atts = { "kk_ins2_cstm_acog"}},
	--{header = "Barrel", offset = {-300, -500}, atts = {"kk_ins2_suppressor_sec"}},
	--{header = "Under", offset = {-400, -25}, atts = {"kk_ins2_bipod", "kk_ins2_vertgrip"}},
	--{header = "Lasers", offset = {200, -25}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1000, -25}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--{header = "Magazine", offset = {-150, 500}, atts = {"kk_ins2_mag_fal_30"}},
	--["+use"] = {header = "Sight Contract", offset = {200, -500}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {600, 500}, atts = {"am_magnum", "am_matchgrade"}}
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
	base_reload_mm = "base_reload_ext",
	base_reload_empty_mm = "base_reloadempty_ext",
	base_idle = "base_idle",
	base_holster = "base_holster",
	-- base_firemode = "base_fireselect",
	-- base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire_b",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_reload_mm = "foregrip_reload_ext",
	foregrip_reload_empty_mm = "foregrip_reloadempty_ext",
	foregrip_idle = "blend_idle_foregrip",
	foregrip_holster = "foregrip_holster",
	-- foregrip_firemode = "foregrip_fireselect",
	-- foregrip_firemode_aim = "foregrip_iron_fireselect_b",
	foregrip_sprint = "foregrip_sprint",
	foregrip_safe = "foregrip_down",
	foregrip_safe_aim = "foregrip_iron_down",
	foregrip_crawl = "foregrip_crawl",

	bipod_in = "deployed_in",
	bipod_fire = "deployed_fire",
	bipod_fire_aim = "deployed_iron_fire",
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_reload = "deployed_reload",
	bipod_reload_empty = "deployed_reloadempty",
	bipod_reload_mm = "deployed_reload_ext",
	bipod_reload_empty_mm = "deployed_reloadempty_ext",
	-- bipod_firemode = "deployed_fireselect",
	-- bipod_firemode_aim = "deployed_iron_fireselect",
	bipod_out = "deployed_out",
}

SWEP.SpeedDec = 40

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Мерки"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_l1a1.mdl"
SWEP.WorldModel		= "models/weapons/w_l1a1.mdl"

SWEP.WMPos = Vector(5.05, 0.816, -1.454)
SWEP.WMAng = Vector(-7, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 100
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 60/650
SWEP.FireSound = "CW_KK_INS2_FNFAL_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_FNFAL_FIRE_SUPPRESSED"
SWEP.Recoil = 2.3

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.06
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
SWEP.Damage = 75

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.FirstDeployTime = 1.8
SWEP.WeaponLength = 28

SWEP.MuzzleVelocity = 840

SWEP.ReloadTimes = {
	base_reload = {2.3, 3.4},
	base_reloadempty = {2.3, 4.3},
	base_reload_ext = {2.3, 3.4},
	base_reloadempty_ext = {2.3, 4.3},

	foregrip_reload = {2.3, 3.4},
	foregrip_reloadempty = {2.3, 4.3},
	foregrip_reload_ext = {2.3, 3.4},
	foregrip_reloadempty_ext = {2.3, 4.3},

	deployed_reload = {2.2, 3.27},
	deployed_reloadempty = {2.2, 4},
	deployed_reload_ext = {2.2, 3.27},
	deployed_reloadempty_ext = {2.2, 4},
}

if CLIENT then
	function SWEP:updateStandardParts()
		self:setElementActive("kk_ins2_mag_l1a1_20", !self.ActiveAttachments.kk_ins2_mag_fal_30)
	end
end
if CLIENT then
	local old, x, y, ang
	local reticle = surface.GetTextureID("cwkk/reticles/acog")

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