input = File.read('input.txt')
nums = input.split(//)

#move the last to the first
a = nums.pop
nums.unshift(a)

firstIt = 0
old = 0
runningTotal = 0

nums.each do |n|
  if(!firstIt)
    old = n
    firstIt = 1 
    next
  end

  if n == old
    runningTotal += n.to_i
  end
  old = n
end

puts runningTotal