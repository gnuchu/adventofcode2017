require 'pp'
require 'set'

input = File.read('./input.txt')

valid_phrases = 0
invalid_phrases = 0

input.split("\n").each do |passphrase|
  #String of words
  words = passphrase.chomp.split("\s")
  words = words.map { |x| x.split(//).sort.join }
  invalid_word = 0

  words.each do |word|
    if words.count(word) > 1
      invalid_word = 1
      break
    end
  end
  if invalid_word == 1 
    invalid_phrases += 1
  else
    valid_phrases += 1
  end
end

puts "Valid Count: #{valid_phrases.to_s}"
puts "Invalid Count: #{invalid_phrases.to_s}"
