input = File.read('input.txt')
nums = input.split(//)

current_idx = 0
compare_idx = nums.size/2
middle = nums.size/2
runningTotal = 0

while current_idx < middle
  if nums[current_idx].to_i == nums[compare_idx].to_i
    runningTotal += nums[current_idx].to_i * 2
  end

  current_idx += 1
  compare_idx += 1
end

puts runningTotal