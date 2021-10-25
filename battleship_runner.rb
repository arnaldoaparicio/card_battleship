require './lib/ship'
require './lib/cell'
require './lib/board'

puts "Welcome to BATTLESHIP\nEnter p to play. Enter q to quit.\n>"
response = gets.chomp.downcase

until response == 'q'
  if response == 'p'
    # game = Game.new, this is to create an instance of the game
    # game.some method to begin the setup
    response = 'q' # allows player to quit
  else
    puts "You entered #{response}. Enter p to play. Enter q to quit.\n>"
    response = gets.chomp.downcase
  end
end