require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/setup'

puts "Welcome to BATTLESHIP\nEnter p to play. Enter q to quit.\n>"
response = gets.chomp.downcase
board = Board.new
ship = Ship.new("Cruiser", 3)
submarine = Ship.new("Submarine", 2)
setup = Setup.new(board)
cruiser = Ship.new("Cruiser", 3)

until response == 'q'
  if response == 'p'
    # game = Game.new, this is to create an instance of the game
    # game.some method to begin the setup
    setup.sub_placement(submarine)
    setup.cruiser_placement(cruiser)
    setup.computer_render
    # setup.player_placement(ship)
    puts "I have laid out my ships on the grid."
    puts "You now need to lay out your two ships."
    puts "The Cruiser is three units long and the Submarine is two units long."

setup.player_placement(cruiser)
    # unless board.valid_placement?() ==
      puts "Enter the squares for the Cruiser (3 spaces):\n>"
      response = gets.chomp # allows player to quit
      setup.player_render

      # unless board.valid_placement?()
        puts "Enter the squares for the Submarine (2 spaces):\n>"
        response = gets.chomp # allows player to quit
        setup.player_render


      else
        puts "You entered #{response}. Enter p to play. Enter q to quit.\n>"
        response = gets.chomp.downcase

      end


    end
