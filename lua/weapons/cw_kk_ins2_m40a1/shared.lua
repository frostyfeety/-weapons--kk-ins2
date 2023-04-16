if not CustomizableWeaponry then return end

AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
AddCSLuaFile("sh_soundscript.lua")
include("sh_sounds.lua")
include("sh_soundscript.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M40A1"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15

	SWEP.SelectIcon = surface.GetTextureID("vgui/inventory/weapon_m40a1")

	SWEP.Shell = "KK_INS2_762x51"
	-- SWEP.ShellDelay = 0.9
	SWEP.NoShells = true

	SWEP.BackupSights = {
		["kk_ins2_elcan"] = {
			Vector(-2.8091, -3, -0.673),
			Vector(-0.4423, 0.0292, 0)
		},
	}

	SWEP.AttachmentModelsVM = {
		
		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/a_bipod_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_bipod1"] = {model = "models/weapons/upgrades/a_bipod_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		["kk_ins2_scope_m401"] = {model = "models/weapons/upgrades/a_optic_m40.mdl", rLight = true, pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		}

	SWEP.AttachmentModelsWM = {
		["kk_ins2_bipod"] = {model = "models/weapons/upgrades/w_bipod_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_scope_m40"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true},

		
		["kk_ins2_scope_m401"] = {model = "models/weapons/upgrades/w_scope_m40.mdl", pos = Vector(), angle = Angle(), size = Vector(1, 1, 1), merge = true,active=true},

		}

	-- SWEP.WElements = {
		-- ["scout"] = { type = "Model", model = "models/weapons/w_m40.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.021, 0.694, -1.369), angle = Angle(-10, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
		-- ["awp"] = { type = "Model", model = "models/weapons/w_m40.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.919, 0.822, -1.236), angle = Angle(-10, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
	-- }

	SWEP.KKINS2ScopeMosinPos = Vector(-2.791, -2, 0.479)
	SWEP.KKINS2ScopeMosinAng = Vector()
SWEP.AlternativePos = Vector(-1, 1, -2)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	SWEP.IronsightPos = Vector(-2.815, -1, 0.2)
	SWEP.IronsightAng = Vector(-0.03, 0.03, 0)

	SWEP.KKINS2KobraPos = Vector(-2.8054, -2, 0.2518)
	SWEP.KKINS2KobraAng = Vector()

	SWEP.KKINS2EoTechPos = Vector(-2.8057, -2, 0.3303)
	SWEP.KKINS2EoTechAng = Vector()

	SWEP.KKINS2AimpointPos = Vector(-2.8108, -2, 0.3609)
	SWEP.KKINS2AimpointAng = Vector()

	SWEP.KKINS2ElcanPos = Vector(-2.8018, -3, 0.248)
	SWEP.KKINS2ElcanAng = Vector()

	SWEP.KKINS2PO4Pos = Vector(-2.7451, -3, 0.4511)
	SWEP.KKINS2PO4Ang = Vector()

	SWEP.KKINS2ScopeM40Pos = Vector(-2.8131, 0, 0.6989)
	SWEP.KKINS2ScopeM40Ang = Vector()

	SWEP.KKINS2MagnifierPos = Vector(-2.8017, -3, 0.3467)
	SWEP.KKINS2MagnifierAng = Vector()

	SWEP.CustomizationMenuScale = 0.022
end

SWEP.MuzzleEffect = "muzzleflash_sniper"
SWEP.MuzzleEffectWorld = "muzzleflash_sniper"

SWEP.Attachments = {
	{header = "Прицел", offset = {500, -450}, atts = {"kk_ins2_scope_m40"}},
	--{header = "Barrel", offset = {-100, -450}, atts = {"kk_ins2_suppressor_sec"}},
	{header = "Under", offset = {-400, 0}, atts = {"kk_ins2_bipod"}},
	--{header = "Lasers", offset = {225, 400}, atts = {"kk_ins2_lam", "kk_ins2_flashlight", "kk_ins2_anpeq15"}},
	--{header = "More Sight", offset = {1100, 0}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.ins2.magnifierDependencies},
	--["+use"] = {header = "Sight Contract", offset = {500, -0}, atts = {"kk_ins2_sights_cstm"}},
	--["+reload"] = {header = "Ammo", offset = {1000, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

if CustomizableWeaponry_KK.HOME then
	-- table.insert(SWEP.Attachments, {header = "Skill1", offset = {2100, -800}, atts = {"kk_aimbot"}})
	-- table.insert(SWEP.Attachments, {header = "Skill2", offset = {2100, -400}, atts = {"kk_wallhaq"}})
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {2100, -200}, atts = {"kk_counter"}})
	table.insert(SWEP.Attachments, {header = "CSGO", offset = {2100, 200}, atts = {"kk_textbox"}})
end

SWEP.Animations = {
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = {"base_fire_start", "base_fire_last"},
	base_fire_aim = {"iron_fire_start", "iron_fire_last"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_bolt = "base_fire_end",
	base_bolt_aim = "iron_fire_end",
	base_reload_start = "base_reload_start",
	base_reload_start_empty = "base_reload_start",
	base_insert = "base_reload_insert",
	base_reload_end = "base_reload_end",
	base_reload_end_empty = "base_reload_end_empty",
	base_idle = "base_idle",
	base_holster = "base_holster",
	base_sprint = "base_sprint",
	base_safe = "base_down",
	base_safe_aim = "iron_down",
	base_crawl = "base_crawl",

	bipod_in = "deploy_in",
	bipod_fire = "deployed_fire_start",
	bipod_fire_aim = "deployed_iron_fire_start",
	bipod_fire_empty = "deployed_dryfire",
	bipod_fire_empty_aim = "deployed_iron_dryfire",
	bipod_bolt = "deployed_fire_end",
	bipod_bolt_aim = "deployed_iron_fire_end",
	bipod_reload_start = "deployed_reload_start",
	bipod_reload_start_empty = "deployed_reload_start",
	bipod_insert = "deployed_reload_insert",
	bipod_reload_end = "deployed_reload_end",
	bipod_reload_end_empty = "deployed_reload_end",
	bipod_out = "deploy_out",
}

SWEP.SpeedDec = 40

SWEP.Slot = 0
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"bolt"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "Мерки"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_m40a1.mdl"
SWEP.WorldModel		= "models/weapons/w_m40.mdl"

SWEP.WMPos = Vector(5.118, 1.511, -1.543)
SWEP.WMAng = Vector(-10, 0, 180)

SWEP.Spawnable			= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.ins2.isContentMounted4(SWEP)

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 5*4
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.3
SWEP.FireSound = "CW_KK_INS2_M40A1_FIRE"
SWEP.FireSoundSuppressed = "CW_KK_INS2_M40A1_FIRE_SUPPRESSED"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.075
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.5
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 2
SWEP.Shots = 1
SWEP.Damage = 120

SWEP.FirstDeployTime = 3
SWEP.DeployTime = 0.7
SWEP.HolsterTime = 0.5

SWEP.BipodDeployTime = 1.15
SWEP.BipodUndeployTime = 1.15

SWEP.SnapToIdlePostReload = false

SWEP.Chamberable = false
SWEP.SnapToIdlePostReload = false
SWEP.ShotgunReload = true
SWEP.ReticleInactivityPostFire = SWEP.FireDelay + 0.3
SWEP.GlobalDelayOnShoot = SWEP.FireDelay

SWEP.WeaponLength = 38

SWEP.MuzzleVelocity = 777

SWEP.ReloadTimes = {
	base_fire_end = {15/30, 1.6},
	iron_fire_end = {17/28.5, 1.75},

	base_reload_start = {15/30, 0.9, KK_INS2_SHOTGUN_UNLOAD_ONE},
	base_reload_insert = {12/32, 0.825},
	base_reload_end = {1.1, 1.1},
	base_reload_end_empty = {1.1, 1.1},

	deployed_fire_end = {18/30, 1.7},
	deployed_iron_fire_end = {16/34, 1.5},

	deployed_reload_start = {15/30, 0.9, KK_INS2_SHOTGUN_UNLOAD_ONE},
	deployed_reload_insert = {12/30, 0.825},
	deployed_reload_end = {1.1, 1.1},
}

if CLIENT then
	function SWEP:updateOtherParts() // call me clientSideThink
		local vm = self.CW_VM
		local cycle = vm:GetCycle()
		local activity = self.Sequence

		if activity:find("reload_start") then
			self.shotgunReloading = true
		end

		if activity:find("reload_end") then
			self.shotgunReloading = false
		end
	end

	function SWEP:playSwitchBipod()
		local isBipod = self.dt.BipodDeployed
		local vm = self.CW_VM
		local cycle = vm:GetCycle()
		local activity = self.Sequence

		local canPlay = !(((activity:find("reload") or activity:find("fire_end")) and cycle < 1) or self.shotgunReloading)

		if isBipod != self._KK_INS2_wasBipod and self._KK_INS2_wasBipod != nil then
			if canPlay then
				if isBipod then
					self:playAnim("bipod_in")
				else
					self:playAnim("bipod_out")
				end
			else
				self.KKINS_postReloadBipodSwitch = true
			end
		end
		if self.KKINS_postReloadBipodSwitch and canPlay then
			if isBipod then
				self:playAnim("bipod_in")
			else
				self:playAnim("bipod_out")
			end
			self.KKINS_postReloadBipodSwitch = false
		end

		self._KK_INS2_wasBipod = isBipod
	end
end

if CLIENT then
	function SWEP:nametagElementRender()
		local ent = self.AttachmentModelsVM.kk_textbox.ent

		local osd = os.date("*t")

		ent._KKCSGOOFFSET = 0
		ent._KKCSGOTXT = string.format(
			"T: %02d:%02d:%02d R: %d/%03d",
			osd.hour,
			osd.min,
			osd.sec,
			self:Clip1(),
			self.Owner:GetAmmoCount(self.Primary.Ammo)
		)
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