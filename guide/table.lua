names={"Tom","Jack" }
--table 作为数组使用，是从下标1开始的
print(names[1],names[2])

u_m = {Tom=20,Jack=15,Doris=19,John=10 }
print(u_m.Tom,u_m.Jack)

--key value pairs
for key,value in pairs(u_m) do
    print(key,value)
end

print "=============="

for k,v in pairs(names) do
    print(k,v)
end

print "=============="

for k,v in pairs(u_m) do
    if v==10 then
        print(k,"is 10 years old")
    elseif v==15 then
        print(k,"is 15 years old")
    else
        print(k," is neithor 10 nor 15 years old")
    end
end
