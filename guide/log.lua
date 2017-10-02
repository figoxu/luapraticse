D={}

local function writeMsgToFile(filePath,msg)
    local output=io.open(filePath,"a")
    output:write(msg.."\n")
    output:close()
end

function D.debug(...)
--    parse param to table
    local arg={... }
    local msg="["..os.date("%Y-%m-%d %X",os.time()).." debug] "
    for k,v in pairs(arg) do
--        .. for string append
--        tostring for parse any data type to string
        msg=msg..tostring(v).." "
        writeMsgToFile("log.txt",msg)
    end
    if release then
        return
    else
        print(msg)
    end
end

D.debug("hello world")
release=true
D.debug("hey man")