if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "AK-74M 'Синдикат'" 
	SWEP.CSMuzzleFlashes = true
	SWEP.MuzzleVelocity = 890
	SWEP.AimBreathingEnabled = true
	
	SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_f_ak74m")
	
	SWEP.Shell = "KK_INS2_545x39"
	SWEP.ShellDelay = 0.06
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/f_vertgrip_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(-2.265, 0, 0), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), attachment = "muzzle", merge = false,active=true},
		
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, pos = Vector(-20.265, -2, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1),attachment = "muzzle", merge = false,active=true},
		["kk_ins2_po41"] = {model = "models/weapons/upgrades/a_optic_po4x24.mdl", rLight = true, pos = Vector(-20.265, -2, 0), angle = Angle(0, 0, -90), size = Vector(1, 1, 1),attachment = "muzzle", merge = false,active=true},
		
		}
	
	SWEP.AttachmentModelsWM = {
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_optic_rail1"] = {model = "models/weapons/upgrades/w_f_kv04s_1.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_vertgrip"] = {model = "models/weapons/ethereal/ak74uz_upgrades/w_foregrip_aks74u.mdl", pos = Vector(9.245, 0, 2.5), angle = Angle(), size = Vector(1, 1, 1), merge = false,active=true},
		["kk_ins2_f_tgpa1"] = {model = "models/weapons/upgrades/f_tgpa.mdl", pos = Vector(25.145, 0, 2.5), angle = Angle(), size = Vector(0.6, 0.7, 0.7), merge = false,active=true},
		["kk_ins2_anpeq15"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(16.145, 0, 3.5), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false},
		["kk_ins2_anpeq151"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_anpeq_band.mdl", pos = Vector(16.145, 0, 3.5), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), merge = false,active=true},
		
		["kk_ins2_po4"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		["kk_ins2_po41"] = {model = "models/weapons/upgrades/w_po.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},
		
		}

	SWEP.IronsightPos = Vector(-3.645, 3, 0.21)
	SWEP.IronsightAng = Vector(-0.2, 0.02, -30)

	SWEP.M203Pos = Vector(-1.0384, -4, 0.8356)
	SWEP.M203Ang = Vector(1.0281, -0.0059, 0)

	SWEP.KKINS2KobraPos = Vector(-2.225, 0, -0.65)
	SWEP.KKINS2KobraAng = Vector(0, 0, 0)

	SWEP.KKINS2EoTechPos = Vector(-2.23, 0, -0.6)
	SWEP.KKINS2EoTechAng = Vector(0, 0, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.225, 0, -0.58)
	SWEP.KKINS2AimpointAng = Vector(0, 0, 0)

	SWEP.KKINS2ElcanPos = Vector(-2.2315, 0, -0.7)
	SWEP.KKINS2ElcanAng = Vector(0, 0, 0)

	SWEP.KKINS2PO4Pos = Vector(-2.174, 0, -0.4925)
	SWEP.KKINS2PO4Ang = Vector(0, 0, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.229, 0, -0.597)
	SWEP.KKINS2MagnifierAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMCMorePos = Vector(-2.225, 0, -0.58)
	SWEP.KKINS2CSTMCMoreAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.23, 0, -0.6)
	SWEP.KKINS2CSTMBarskaAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMMicroT1Pos = Vector(-2.225, 0, -0.58)
	SWEP.KKINS2CSTMMicroT1Ang = Vector(0, 0, 0)

	SWEP.KKINS2CSTMEoTechXPSPos = Vector(-2.225, 0, -0.565)
	SWEP.KKINS2CSTMEoTechXPSAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMCompM4SPos = Vector(-2.225, 0, -0.575)
	SWEP.KKINS2CSTMCompM4SAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMACOGPos = Vector(-2.2315, 0, -0.7)
	SWEP.KKINS2CSTMACOGAng = Vector(0, 0, 0)
end

SWEP.MuzzleEffect = "muzzleflash_suppressed"
SWEP.MuzzleEffectWorld = "muzzleflash_suppressed"

SWEP.Attachments = {
	{header = "Прицел", offset = {400, -450}, atts = {"kk_ins2_po4"}},
	{header = "Ствол", offset = {200, 400}, atts = {"kk_ins2_anpeq15"}},
	
	}

SWEP.Animations = {
	base_pickup = "foregrip_ready",
	base_draw = "foregrip_draw",
	base_fire = "foregrip_fire",
	base_fire_aim = "foregrip_iron_fire",
	base_fire_empty = "foregrip_dryfire",
	base_fire_empty_aim = "foergrip_iron_dryfire",
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
	foregrip_fire_aim = "foregrip_iron_fire",
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foergrip_iron_dryfire",
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
SWEP.Category = "Донат"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/ethereal/v_ak74z.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_ak74z.mdl"

SWEP.WMPos = Vector(5.066, 1.16, -1.355)
SWEP.WMAng = Angle(-13, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha
SWEP.CW_KK_40MM_MDL = "models/weapons/upgrades/a_projectile_gp25.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 180
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 60/650
SWEP.FireSound = "CW_KK_INS2_AK74M_FIRE_SUPPRESSED"
SWEP.FireSoundSuppressed = "CW_KK_INS2_AK74M_FIRE_SUPPRESSED"
SWEP.Recoil = 1.3

SWEP.HipSpread = 0.0429
SWEP.AimSpread = 0.0049
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.049
SWEP.SpreadPerShot = 0.0069
SWEP.SpreadCooldown = 0.129
SWEP.Shots = 1
SWEP.Damage = 55

SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.FirstDeployTime = 2.1
SWEP.WeaponLength = 12

SWEP.ReloadTimes = {
	base_reload = {2.2, 3.15},
	base_reloadempty = {2.2, 4.35},
	
	foregrip_reload = {2.2, 3.15},
	foregrip_reloadempty = {2.2, 4.35},
	
	gl_reload = {2.2, 3.15},
	gl_reloadempty = {2.2, 4.35},
	
	glsetup_in = {0.6, 0.6},
	glsetup_out = {0.7, 0.7},
	
	glsetup_reload = {1.75, 2.67}
}
if CLIENT then
	local old, x, y, ang
	local reticle = surface.GetTextureID("models/weapons/optics/po4x_reticule")

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