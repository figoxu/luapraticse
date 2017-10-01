player={}
player.__index=player

function player.New()
    local obj={name="unkown",life=100,weapon={attack=20} }
    setmetatable(obj,player)
    return obj
end

function player.Attack(target)
    print("attack",target.name)
end

-- :相当于隐形的传了第一个参数  self
function player:BloodStrike(target)
--    self is this ptr
    target.life=target.life-self.weapon.attack
end

local me=player.New()
me.name="Figo"
print(me.name,me.life)
local he=player.New()
he.name="Andy"


-- mr -> meta table -> __index -> "Attack" field or method
me.Attack(he)
print(he.life)
me:BloodStrike(he)
print(he.life)