if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "RPG-7"

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_rpg7")

	SWEP.RearEffectw = true
	SWEP.NoShells = true

	SWEP.BackupSights = {
		["kk_ins2_cstm_pgo7"] = {
			Vector(-2.1193, -2, -0.9167),
			Vector(2.6066, -0.2973, 8)
		},
	}

	SWEP.AttachmentModelsVM = {
		
		["kk_ins2_cstm_pgo7"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_pgo7.mdl", bone = "RPG_Body", pos = Vector(1.052, -1.989, -0.811), angle = Angle(0, -90, 0), size = Vector(0.949, 0.949, 0.949)},
		["kk_ins2_cstm_pg1o7"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_pgo7.mdl", bone = "RPG_Body", pos = Vector(1.052, -1.989, -0.811), angle = Angle(0, -90, 0), size = Vector(0.949, 0.949, 0.949),active=true},

		["kk_counter"] = {model = "models/weapons/stattrack.mdl", bone = "RPG_Body", pos = Vector(0.605, -2.793, 2.559), angle = Angle(), size = Vector(0.28, 0.28, 0.28)},
	}

	SWEP.AttachmentModelsWM = {
		
		
		["kk_ins2_cstm_pgo7"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_pgo7.mdl", bone = "R Hand", pos = Vector(0.351, -0.724, 7.335), angle = Angle(-23.414, 16.023, 14.635), size = Vector(1.2, 1.2, 1.2)},
	["kk_ins2_cstm_pgo17"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_pgo7.mdl", bone = "R Hand", pos = Vector(0.351, -0.724, 7.335), angle = Angle(-23.414, 16.023, 14.635), size = Vector(1.2, 1.2, 1.2),active=true},
	}

	SWEP.LaserAngAdjust = Angle(0,-1,0)

	SWEP.IronsightPos = Vector(-2.1193, -2, -0.9167)
	SWEP.IronsightAng = Vector(2.6066, -0.2973, 8)

	SWEP.KKINS2CSTMPGO7Pos = Vector(-0.8264, -1, -0.3879)
	SWEP.KKINS2CSTMPGO7Ang = Vector(2.6952, -0.3054, 7.5)

	-- SWEP.SprintPos = Vector(0, -1, 0)
	-- SWEP.SprintAng = Vector(1.8, 0, 0)

	-- SWEP.AlternativePos = Vector(0, -1, 0)
	-- SWEP.AlternativeAng = Vector(1.8, 0, 0)

	SWEP.SprintAnimSpeed = 1
	SWEP.ViewModelMovementScale_sprint = 0.6
	SWEP.DisableSprintViewSimulation = true

	SWEP.CustomizationMenuScale = 0.01
	SWEP.HUD_MagText = "TUBE: "

	SWEP.Trivia = {
		text = "This one is the best.",
		x = -500,
		y = -500,
		textFormatFunc = function(self, wep)
			if wep.ActiveAttachments.kk_ins2_cstm_pgo7 and wep.ActiveAttachments.kk_ins2_anpeq15 and wep.ActiveAttachments.kk_counter then
				return self.text
			else
				return ""
			end
		end
	}
end

SWEP.MuzzleEffect = "ins_weapon_rpg_frontblast"

SWEP.Chamberable = false
SWEP.WeaponLength = 44

SWEP.Attachments = {
	{header = "Прицел", offset = {300, -500}, atts = {"kk_ins2_cstm_pgo7"}},
	}

if CustomizableWeaponry_KK.HOME then
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {1000, -500}, atts = {"kk_counter"}})
	-- table.insert(SWEP.Attachments, {header = "CSGO", offset = {1000, 100}, atts = {"kk_wallhaq"}})
end

SWEP.KK_INS2_EmptyIdle = true

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_draw_empty = "empty_draw",
	base_fire = "base_fire",
	base_fire_aim = "iron_fire",
	base_fire_last = "base_fire",
	base_fire_last_aim = "iron_fire",
	base_fire_empty = "empty_dryfire",
	base_fire_empty_aim = "empty_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reload",
	base_idle = "base_idle",
	base_idle_empty = "empty_idle",
	base_holster = "base_holster",
	base_holster_empty = "empty_holster",
	base_sprint = "base_sprint",
	base_sprint_empty = "empty_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_safe_empty = "empty_down",
	base_safe_empty_aim = "iron_down_empty",
	base_crawl = "base_crawl",
	base_crawl_empty = "empty_crawl",
}

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
		{time = 15/32.5, sound = "CW_KK_INS2_RPG_FETCH"},
		{time = 77/32.5, sound = "CW_KK_INS2_RPG_LOAD1"},
		{time = 97/32.5, sound = "CW_KK_INS2_RPG_LOAD2"},
		{time = 135/32.5, sound = "CW_KK_INS2_RPG_ENDGRAP"},
	},

	base_draw = {
		{time = 0/32.5, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0/32.5, sound = "CW_KK_INS2_UNIVERSAL_HOLSTER"},
	},

	base_crawl = {
		{time = 0/32, sound = "CW_KK_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 13/32, sound = "CW_KK_INS2_UNIVERSAL_LEFTCRAWL"},
	},

	base_reload = {
		{time = 15/32.5, sound = "CW_KK_INS2_RPG_FETCH"},
		{time = 77/32.5, sound = "CW_KK_INS2_RPG_LOAD1"},
		{time = 97/32.5, sound = "CW_KK_INS2_RPG_LOAD2"},
		{time = 135/32.5, sound = "CW_KK_INS2_RPG_ENDGRAP"},
	},

	empty_draw = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_DRAW"},
	},

	empty_holster = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_HOLSTER"},
	},

	empty_dryfire = {
		{time = 1/30, sound = "CW_KK_INS2_GP30_EMPTY"},
	},

	empty_crawl = {
		{time = 0, sound = "CW_KK_INS2_UNIVERSAL_RIGHTCRAWL"},
		{time = 13/32, sound = "CW_KK_INS2_UNIVERSAL_LEFTCRAWL"},
	}
}

SWEP.SpeedDec = 15

SWEP.Slot = 4
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"single"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Взрывчатка"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_cw_kk_ins2_rpg.mdl"
SWEP.WorldModel		= "models/weapons/ethereal/w_rpg7.mdl"

SWEP.WMPos = Vector(7, 0, -3)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.CW_GREN_TWEAK = CustomizableWeaponry_KK.ins2.quickGrenade.models.f1
SWEP.CW_KK_KNIFE_TWEAK = CustomizableWeaponry_KK.ins2.quickKnife.models.gurkha

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 3
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "PG-7VM Grenade"

SWEP.FireDelay = 0.5
SWEP.FireSound = "CW_KK_INS2_RPG_FIRE"
SWEP.Recoil = 2

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0
SWEP.VelocitySensitivity = 0
SWEP.MaxSpreadInc = 0.01
SWEP.SpreadPerShot = 0
SWEP.SpreadCooldown = 0
SWEP.Shots = 1
SWEP.Damage = 0

SWEP.MuzzleVelocity = 115
SWEP.projectileClass = "cw_kk_ins2_projectile_rpg"
SWEP.hipBulletDelay = 0.2727

SWEP.FirstDeployTime = 4.7
SWEP.DeployTime = 1.1
SWEP.HolsterTime = 0.9

SWEP.ironFireAnimStartCycle = 0.3

SWEP.ReloadTimes = {
	base_ready = {4.7, 4.7},
	base_reload = {3.4, 4.8},
}

SWEP.reloadProgressAnimsRaw = {
	base_pickup = true
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