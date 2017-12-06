require 'pp'
input = File.read('./input.txt')

a = Array.new
running_total = 0

input.split("\n").each do |line|
  row = line.split("\s").map{ |x| x.to_i }
  a.push(row)
end

a.each do |v|
  running_total += (v.max - v.min)
end

puts running_total.to_s