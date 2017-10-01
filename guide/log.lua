D={}

local function writeMsgToFile(filePath,msg)

end

function D.debug(...)
--    parse param to table
    local arg={... }
    local msg="["..os.date("%Y-%m-%d %X",os.time()).." debug] "
    for k,v in pairs(arg) do
--        .. for string append
--        tostring for parse any data type to string
        msg=msg..tostring(v).." "
    end
    if release then
        return
    else
        print(msg)
    end
end

D.debug("hello world")