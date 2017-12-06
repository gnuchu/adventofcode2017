require 'pp'
input = File.read('./input.txt')

a = Array.new
running_total = 0

input.split("\n").each do |line|
  row = line.split("\s").map{ |x| x.to_i }
  row = row.sort

  row.each_with_index do |i, i_index|
    row.each_with_index do |j, j_index|
      next if(i_index == j_index)

      if(i % j == 0)
        running_total += i/j
      end
    end
  end
end

puts running_total
