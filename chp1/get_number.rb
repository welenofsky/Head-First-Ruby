# Get My Number Game
# Written By: Justin
############################################
# General Notes from chapter
#
# Inspect and p
# These two lines are equiv
# puts name.inspect
# p name
# converts obj to string repr for debugging

puts "Welcome to 'Get my Number!'"
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Track number of guesses user has made1
num_guesses = 0

# Track whether the player has guessed it correctly
guessed_it = false

until num_guesses == 10 || guessed_it
	puts "#{10 - num_guesses} guesses left."
	print "Make a guess: "
	guess = gets.to_i

	num_guesses += 1

	# Compare the guess to the target.
	# Print the appropriate message.
	if guess < target
		puts "Oops. Your guess was LOW."
	elsif guess > target
		puts "Oops. Your guess was HIGH."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guess my number in #{num_guesses} guesses!"
		guessed_it = true
	end
end

# If player ran out of turns, tell them what the number was.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end

