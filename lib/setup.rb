require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'

class Setup
  attr_reader :board,
              :ship
  def initialize(board, ship)
    @board = board
    @ship  = ship
  end
  # will need to place ships for computer
  # allow for player to place ships
  # give response after computer places ships,
  # and how to place ships
  # show new board to player
  # respond to invalid placements
  def computer_setup
    require "pry"; binding.pry
  end
end