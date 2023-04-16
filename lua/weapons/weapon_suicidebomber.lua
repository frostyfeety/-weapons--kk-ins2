-- "addons\\weapons_suicide_bomber\\lua\\weapons\\weapon_suicidebomber.lua"
-- Retrieved by https://github.com/c4fe/glua-steal

AddCSLuaFile()

SWEP.PrintName	= "Suicide Bomb"

SWEP.Author		= "Icefuse Networks"
SWEP.Category   = "Взрывчатка"
SWEP.Purpose	= ""

SWEP.Spawnable	= true
SWEP.UseHands	= true
SWEP.DrawAmmo	= false

SWEP.ViewModel = "models/weapons/v_ied_ins.mdl"
SWEP.WorldModel	= "models/suicide_vest/vest.mdl"
SWEP.TraceLength = 500
SWEP.ViewModelFOV = 70
SWEP.Slot = 5
SWEP.SlotPos = 0
SWEP.BounceWeaponIcon   = false

SWEP.Effect                =  "cw_kk_ins2_particles"
			
SWEP.EffectAir             =  "c4_explosion_air" 

util.PrecacheModel( SWEP.ViewModel )

SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

CreateConVar( "suicidebomber_damage", 9000, FCVAR_NONE, "Determines how much damage the C4 Belt deals. Default is 250." )
CreateConVar( "suicidebomber_censor", 0, FCVAR_NONE, "Should the suicide bomber scream ALLAHU AKBAR before exploding?" )
CreateConVar( "suicidebomber_unfreeze", 0, FCVAR_NONE, "Should physics objects unfreeze during the explosion?" )
local BombDmgConVar = GetConVar( "suicidebomber_damage" )
local PreExplodeSound = GetConVar( "suicidebomber_censor" )
local Unfreeze = GetConVar( "suicidebomber_unfreeze" )

local Explosion = {
	"CW_KK_INS2_IED_ENT_DETONATE" 
}
local Capacitors =	"capacitor1.mp3"

local Scream =	"nokia-3310.mp3"

SWEP.DamageDistance = 600


function SWEP:Initialize()

	self:SetHoldType( "slam" )
	self.CanPerformAttack = true
	timer.Simple(0.05,function()
		self:SendWeaponAnim(ACT_SLAM_DETONATOR_IDLE)
	end)
	
end

function SWEP:PreDrawViewModel( vm, wep, ply )

	--vm:SetMaterial( "engine/occlusionproxy" ) 
end



if CLIENT then
	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/musel_swep" )
end

function SWEP:GetCapabilities()
	if self.Owner:IsNPC() then
	return CAP_WEAPON_MELEE_ATTACK1, CAP_INNATE_MELEE_ATTACK1, CAP_WEAPON_MELEE_ATTACK2, CAP_INNATE_MELEE_ATTACK2 end
end

function SWEP:PrimaryAttack( right )


	if not self.CanPerformAttack then return false end
	self.CanPerformAttack = false
	self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	if ( IsValid( self.Owner ) && CLIENT && self.Owner:IsPlayer() ) then
	local vm = self.Owner:GetViewModel()
	end
	--vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
	if PreExplodeSound:GetInt() == 0 then
		self:EmitSound( Scream )
		--sound.Play(MuselScream, self:GetPos(), 180 , 100, 1 ) 
	else
		self:EmitSound( Capacitors )
		--sound.Play(Capacitors, self:GetPos(), 180 , 100, 1 )
	end
	

	timer.Simple(1.6,function()
			self:SendWeaponAnim(ACT_SLAM_DETONATOR_DETONATE)

			self:EmitSound( "CW_KK_INS2_IED_ENT_DETONATE" )
			local pos = self.Owner:GetPos()
			local tracedata    = {}
				 tracedata.start    = pos
				 tracedata.endpos   = tracedata.start - Vector(0, 0, self.TraceLength)
				 tracedata.filter   = self.Entity
					
			 local trace = util.TraceLine(tracedata)
			 
			 if trace.HitWorld then
				fx = ents.Create("cw_kk_ins2_particles")
				fx:processProjectile(self)
				fx:Spawn()
			 else 
				 ParticleEffect(self.EffectAir,pos,Angle(0,0,0),nil) 
			 end
		if CLIENT then
			--self:EmitSound( Explosion[math.floor(math.Rand(1,4))] )
			 --sound.Play( , self:GetPos(), 180 , 100, 1 ) 
		elseif SERVER then
			util.BlastDamage(self, self.Owner, pos, self.DamageDistance, BombDmgConVar:GetInt())
			for k,v in pairs(ents.FindInSphere(self:GetPos(),1024)) do
				if v and v:IsValid() then
					if Unfreeze:GetInt() == 1 then
						if not type(v) == "prop_physics" then return false end
						constraint.RemoveConstraints( v, "Weld" ) 
						local phys = v:GetPhysicsObject()
						if phys and phys:IsValid() then
							phys:Wake()
							phys:EnableMotion(true)
							phys:ApplyForceCenter(-(self:GetPos()-phys:GetPos()) * (phys:GetMass()*(1024-phys:GetPos():Distance(self:GetPos())) ) )
						end
					end
				end
			end
		end
	end)
end
function SWEP:SecondaryAttack()

end
function SWEP:OnRemove()
	
	if ( IsValid( self.Owner ) && CLIENT && self.Owner:IsPlayer() ) then
		local vm = self.Owner:GetViewModel()
		if ( IsValid( vm ) ) then vm:SetMaterial( "" ) end
	end
	
end

function SWEP:Holster( wep )

	self:OnRemove()

	return true

end

function SWEP:Deploy()


	
	return true

end

function SWEP:Think()
	
	
	
end


-- "addons\\weapons_suicide_bomber\\lua\\weapons\\weapon_suicidebomber.lua"
-- Retrieved by https://github.com/c4fe/glua-steal




