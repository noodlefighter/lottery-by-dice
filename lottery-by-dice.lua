require "math"

-- 执行前先填写投注信息和开奖号码：
goal = 311
bet_list = {
  { name = "暖", val = 525 },
  { name = "脸", val = 435 },
  { name = "碧", val = 256 },
  { name = "雾", val = 235 },
  { name = "热", val = 234 },
  { name = "罐", val = 426 },
  { name = "柄", val = 512 },  
  { name = "虾", val = 123 },  
}
----------------------

print("投注信息：")
for i, item in ipairs(bet_list) do
  print(item.name, "=", item.val)
end

for i, item in ipairs(bet_list) do   
  item.diff = math.abs(item.val - goal)
end 

table.sort(bet_list, 
  function(a, b)
    return a.diff < b.diff
  end
)

print("开奖号码为", goal)
for i, item in ipairs(bet_list) do
  print(item.name, "diff", item.diff)
end
