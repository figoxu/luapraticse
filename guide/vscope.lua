
x = 100
y = 300
local z = 500
local v1 = 700
function foo()
    x=200
    local y=400
    z=600
    local v1 = 800
    print("inner","x=",x,"y=",y,"z=",z,"v1=",v1)
end

print("x=",x,"y=",y,"z=",z,"v1=",v1)
foo()

print("x=",x,"y=",y,"z=",z,"v1=",v1)