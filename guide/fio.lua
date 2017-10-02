require "log"


local input=io.open("fio.txt","r")
local data = input:read("*all")
input:close()
D.debug(data)
input=io.open("fio.txt","r")
while true do
    local data=input:read("*line")
    if data then
        D.debug(data)
    else
        break
    end
end
input:close()
D.debug("ENDS")


