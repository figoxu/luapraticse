
local k = KEYS[1]
local i = ARGV[1]

local v = redis.call('GET', k)
if not v then
  v = 0
end
redis.log(redis.LOG_WARNING, "Debug message Before ",v)
v = v + i
redis.log(redis.LOG_WARNING, "Debug message After ",v)
redis.call('SET', k, v)

return v
