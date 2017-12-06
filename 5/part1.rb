require 'pp'
require 'byebug'

input = File.read('./input.txt')
nums = Array.new
input.split(/\n/).each { |x| nums.push(x.to_i) }

# nums = [0, 3, 0, 1, -3]

# [0, 3, 0, 1, -3]
# [1, 3, 0, 1, -3]
# [1, 4, 0, 1, -3]
# [1, 4, 0, 1, -2]
# [1, 4, 0, 1, -2]


moves = 0
lower_edge = 0 
upper_edge = nums.count
position = 0

loop do
  #puts "Postition: #{position} Moves: #{moves} Current Num: #{nums[position]}"
  if position < lower_edge || position == upper_edge
    break
  end

  begin 
    moves += 1
    old_position = position

    position = old_position + nums[old_position]
    nums[old_position] = nums[old_position] + 1
  rescue
    break
  end
end

pp moves