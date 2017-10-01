
GrayGun={attack=10,name="cookie"}
GreenGun={attack=20,name="doland"}
BlueGun={attack=30,name="arc"}
guns={GrayGun,GreenGun,BlueGun}

Tom={weapon=GrayGun,age=10,blood=1000}

for k,v in pairs(guns) do
    print(k,v.name,v.attack)
    if v.attack==20 then
        Tom.weapon=v
        break
    end
end

print("tom's weapon :",Tom.weapon.attack," with name: ",Tom.weapon.name)




