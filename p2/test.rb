#!/usr/bin/env ruby

def get_it word, correct_guess
  string_word = word.join("")
  string_word.split("").each do |x|
  if x =~ /#{correct_guess}/
    puts x
  else
    puts "none"
  end
 end
end

word = ["hello"]
correct_guess = ["e", "o"] 

get_it word, correct_guess

