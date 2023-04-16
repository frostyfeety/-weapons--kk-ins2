if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "RPK-74M 'Синдикат'"
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
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_f_tgpa"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(0, 0.45, 0), angle = Angle(0, 90, 0), size = Vector(0.6, 0.6, 0.6), attachment = "Suppressor",active=true},
											
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_po41"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}
	
	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(31.0845, 0, 2.3), angle = Angle(), size = Vector(0.7, 0.7, 0.7), merge = false,active=true},
		
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(17, 0, 3.6), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false,active=true},
		["kk_ins2_optic_rai1l"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_po41"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}

	SWEP.IronSightPos = Vector(-2.3075, 0, 0.55)
	SWEP.IronSightAng = Vector(0.05, 0, 0)

	SWEP.KKINS2KobraPos = Vector(-2.3125, 0, -1)
	SWEP.KKINS2KobraAng = Vector(0, -0.125, 0)

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

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_po4"}},
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
	base_safe = "base_down",
	base_safe_aim = "iron_down",
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
SWEP.ViewModel		= "models/weapons/v_f_rpk74m.mdl"
SWEP.WorldModel		= "models/weapons/w_f_rpk74m.mdl"

SWEP.WMPos = Vector(5.166, 0.66, -1.755)
SWEP.WMAng = Angle(-8, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 75
SWEP.Primary.DefaultClip	= 75*4
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/600
SWEP.FireSound = "CW_KK_INS2_RPK74M_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_RPK74M_FIRE_SUPPRESSED"
SWEP.Recoil = 2.7

SWEP.HipSpread = 0.0429
SWEP.AimSpread = 0.0039
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.049
SWEP.SpreadPerShot = 0.0069
SWEP.SpreadCooldown = 0.129
SWEP.Shots = 1
SWEP.Damage = 66

SWEP.FirstDeployTime = 2.2
SWEP.DeployTime = 0.9
SWEP.HolsterTime = 0.7

SWEP.BipodDeployTime = 1.5
SWEP.BipodUndeployTime = 1.9

SWEP.BipodInstalled = true
SWEP.WeaponLength = 26

SWEP.ReloadTimes = {
	base_reload = {3.4, 4.5},
	base_reloadempty = {3.4, 6},
	
	deployed_reload = {116/30, 4.8},
	deployed_reloadempty = {116/30, 6},
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