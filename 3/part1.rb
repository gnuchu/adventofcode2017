require 'pp'

input = 325489

x = 0
y = 0

turn = 0
coords = Hash.new
inc = 1

(1..input).each do |i|
  coords[i] = [x, y]
  
  if i % 8 == 0
    inc +=1
  end
  
  if turn == 0
    x += inc
  elsif turn == 1
    y += inc
  elsif turn == 2
    x -= inc
  elsif turn == 3
    turn = -1
    y -= inc
  end

  turn += 1

end

pp coords

