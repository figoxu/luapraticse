require "log"

Item={name="unkown",type="unkown"}
Item.__index=Item

function Item:GetType()
    return self.type
end

function Item:GetName()
    return self.name
end

Gun={damage=0}
Gun.__index=Gun
setmetatable(Gun,Item)

function Gun.New()
    local obj={}
    setmetatable(obj,Gun)
    obj.name="arc"
    obj.type="cool"
    obj.damage=10
    return obj
end

function Gun:GetDamage()
    return self.damage
end

local gun=Gun.New()
D.debug(gun:GetType(),gun:GetDamage())
