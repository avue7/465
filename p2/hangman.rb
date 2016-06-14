#!/usr/bin/env ruby
# Athit Vue
# Program 2: Hangman.rb

# FUNCTIONS DEFINITION
def pick_word array_dictionary 
 word = array_dictionary.first
 return word
end

def count_vowels array_guess
  array_guess.count { |x| x=~ /[aeiouy]/i}
end

def remove char, array_dictionary
 array_dictionary.delete_if { |word| word =~/#{char}/} 
end

def check_elimination letter, array_dictionary
 array_dictionary.select! { |word| word if word != /#{letter}/}.compact.length > 0
end

def get_placeholder word, guess_word
 placeholder = ' '
 word.chars { |char| placeholder += (guess_word.include?char)? char: ' _ '}
 placeholder 
end
 
# Open the file from a file and use readlines
# to store the words by eof delimiter to an array
file = File.open("words")
array_dictionary = file.readlines
array_dictionary.map! { |x| x.chomp } # Getting rid of \n lines since its too annoying
#p array_dictionary.size
#p array_dictionary
word_length = 0

# Making sure the word length is an integer
while (true)
 print "Enter word length between 5-20: "
 word_length = gets.chomp.strip
 if word_length.to_i.to_s == word_length
  word_length = word_length.to_i
  array_dictionary.delete_if { |x| x.length != word_length}
#   puts array_dictionary.size
#   puts array_dictionary 
break;
 else
  puts "ERROR: Please enter a valid integer. Try again!"
 end
end

# Making sure user inputs words between 5 and 20
if word_length < 5
word_length = 5
elsif word_length > 20
 word_length = 20
end
# CONSTANTS 
NEW_LINE = "\n"
lives = 10

char = ' _ '
find_char = Regexp.new(char)
first_guess = " "
word = []
correct_guess = []
array_guess = [] # Initializing array
#puts array_dictionary
# MAIN LOOP STARTS HERE:
# Ask for guess and check with error. If no errors are found, 
while(lives != 0 and word.size == 0)
 if(array_guess.size == 0) # IF it's the first guess
  print "Enter your guess: "
 else
  print NEW_LINE + "Enter your guess: "
 end
 first_guess = gets.chomp.strip
 if(!first_guess.match(/^[[:lower:]]$/))
   puts "ERROR: only lower-case a-z are allowed. Try again!"
 elsif(array_guess.include?first_guess)
   puts "Error: you've already guess #{first_guess}"
   puts NEW_LINE + "#{array_guess.join(" ")}  (#{lives} chances left)"
   correct_guess.push(first_guess)
   array_guess.push(first_guess)
   puts " _ " * word_length
 else
   array_guess.push(first_guess)
   lives -= 1
   puts NEW_LINE + "#{array_guess.join(" ")}  (#{lives} chances left)"
   puts " _ " * word_length
   remove first_guess, array_dictionary
   if(array_dictionary.uniq and array_dictionary.size > 1) #== array_dictionary.leng)
    string_dictionary = array_dictionary.join(" ")
    string_dictionary.chars.to_a.uniq 
   end
   if(array_dictionary.size <= 1 or count_vowels(array_guess) == 5)
      word = pick_word array_dictionary
    break;
   end
 end
end
winner = false
#puts "AFTER THE FIRST LOOP END AND WE GOT A FUCKING WORD the guess is : #{word}"
# WHILE THERE ARE LIVES AND A WORD IS SELECTED
while (!winner and lives != 0)
  print NEW_LINE + "Enter your guess: "
  guess = gets.chomp.strip
  if(!guess.match(/^[[:lower:]]$/))
    puts "ERROR: only lower-case a-z are allowed. Try again!"
  elsif(array_guess.include?guess)
    puts "Error: you've already guess #{guess}"
    puts NEW_LINE + "#{array_guess.join(" ")}  (#{lives} chances left)"
    puts get_placeholder(word, correct_guess)
  elsif(word.include?guess)
    correct_guess.push(guess)
    array_guess.push(guess)
    puts NEW_LINE + "#{array_guess.join(" ")}  (#{lives} chances left)"
    puts get_placeholder(word, correct_guess)
    place_holder = get_placeholder(word, correct_guess)
    if(place_holder.include?(' _ ') == false)
      puts NEW_LINE + "YOU WIN!!!"
      winner == true
      break
    end
  else
    array_guess.push(guess)
    lives -= 1
    puts NEW_LINE + "#{array_guess.join(" ")}  (#{lives} chances left)"
    puts get_placeholder(word, correct_guess)
   # puts NEW_LINE + "array_guess is #{array_guess}"
   # puts "correct_guess is #{correct_guess}"
  end
end

# LOST OUTPUT RESULTS AND WORD
if(lives == 0)
puts NEW_LINE +  " YOU LOSE...........the word was #{word}!"
end
# each_char takes string and takes each character
