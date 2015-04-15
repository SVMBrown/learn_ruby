def add(*nums)
  nums.flatten!
  nums.reduce(:+) || 0
end
def subtract(*nums)
  nums.flatten!
  nums.reduce(:-)
end
def sum(arr)
  add(arr)
end
