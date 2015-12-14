math.randomseed(os.time())
local R = 5*72--bp = 5in
local l = R/(2*math.pi*1.5)
for i=1,3000 do
  local a = 360 * math.random()
  local r = R * math.sqrt(math.random())
  local still = '('..a..':'..r..'bp)'
  local d = 4 * math.sin(r/l) * R/r
  local s = r + d
  local moved = '('..a..':'..s..'bp)'
  local q = 0.5*math.sqrt(math.abs(d))
  tex.print('\\draw '..still..' -- '..moved..' circle ('..q..'bp);')
  tex.print('\\fill '..moved..' circle ('..q..'bp);')
end
