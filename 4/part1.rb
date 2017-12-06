require 'pp'
require 'set'

input = File.read('./input.txt')

valid_phrases = 0
invalid_phrases = 0

input.split("\n").each do |passphrase|
  #String of words
  words = passphrase.chomp.split("\s")
  set = Set.new(words)
  if words.count != set.count 
    invalid_phrases+=1
  else
    valid_phrases += 1
  end
end

puts "Valid Count: #{valid_phrases.to_s}"
puts "Invalid Count: #{invalid_phrases.to_s}"
