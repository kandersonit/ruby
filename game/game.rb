#Get My Number Game
#Written by : Keith!

puts "Welcome to 'Get my Number!'"

#Get the players name and greet them
print "What's your name?"
input = gets
name = input.chomp
puts "Welcome, #{name}!"

#store a number
puts "I have a random number for you to guess"
puts "Please guess"
target = rand(100) + 1

#Store number of guesses
num_guesses = 0

#track whether the user has guessed it:
guessed_it = false


until num_guesses == 10 || guessed_it

  puts "#{10 - num_guesses} guesses left."
  puts "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

#compare the guess to the target
#print the appropriate message
  if guess > target
    puts "Your guess was too high!!!"
  elsif guess <  target
    puts "Your guess was to low!!!"
  elsif guess == target
    puts "Great work, #{name}, that is correct!!!"
    puts "You guessed my number in #{num_guesses} guesses!!!"
    guessed_it = true
  end
end

#player runs out of turns.

unless guessed_it
  puts "Sorry. You didn't get it, (it was #{target}) :("
end