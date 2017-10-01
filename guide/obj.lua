player={}
player.__index=player

function player.New()
    local obj={name="unkown",life=100 }
    setmetatable(obj,player)
    return obj
end

function player.Attack(target)
    print("attack",target.name)
end

local me=player.New()
me.name="Figo"
print(me.name,me.life)
local he=player.New()
he.name="Andy"


-- mr -> meta table -> __index -> "Attack" field or method
me.Attack(he)