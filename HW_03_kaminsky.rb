###############################################################################
#
# Introduction to Ruby on Rails
#
# HW_03.rb
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This HW
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to HW 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    that our Player will try to guess.
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys and their Values:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program so that instead of hard coding,
#    use the principles of DRY. This means using some kind of Loop to
#    iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################
puts "Guess the Number Game"
first_name="Jeff"
last_name="Kaminsky"
puts "created by" + first_name + " " + last_name

puts "What is your name?"
player_name = gets
player_name.chomp
puts "Hi #{player_name} You have 3 guesses to guess the Secret Number between 1 and 10"
guesses_left = 3
guesses_left.to_i

set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

secret_number = set_of_numbers.sample.to_i
  
messages = {:win => "you win! congrats", 
				:lose => "sorry you lose, the answer was #{secret_number}",
				:too_low => "too low! guess higher!",
				:too_high => "too high! guess lower!"
	}

until guesses_left == 0
	puts "you have #{guesses_left} guesses left"
	puts "what is your guess?"
	player_guess = gets.chomp.to_i

	if player_guess > secret_number
		puts :too_high
		guesses_left = guesses_left - 1
	elsif player_guess < secret_number
		puts :too_low
		guesses_left = guesses_left - 1
	elsif player_guess == secret_number
		puts "correct! you win!"
		exit
	end
end

puts messages[:lose]

=begin
puts "what is your guess?"
player_guess = gets.chomp.to_i

if player_guess > secret_number
	puts "nope, too high"
	guesses_left = guesses_left - 1
	puts "you have #{guesses_left} guesses left"

elsif player_guess < secret_number
	puts "nope, too low"
	guesses_left = guesses_left - 1
	puts "you have #{guesses_left} guesses left"
elsif player_guess == secret_number
	puts "correct! you win!"
	exit
end

print "what is your guess?"
player_guess = gets.chomp.to_i

if player_guess > secret_number
	puts "nope, too high"
	guesses_left = guesses_left - 1
	puts "you have #{guesses_left} guesses left"

elsif player_guess < secret_number
	puts "nope, too low"
	guesses_left = guesses_left - 1
	puts "you have #{guesses_left} guesses left"
elsif player_guess == secret_number
	puts "correct! you win!"
	exit
end

if guesses_left == 0
	puts "nice try! the secret number was 7"
end
=end
