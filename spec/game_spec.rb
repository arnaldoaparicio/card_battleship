require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'

RSpec.describe Game do
  it 'exists' do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  # it '#place ship' do
  #   game = Game.new
  #   board = Board.new
  #   cell = Cell.new
  #   cruiser = Ship.new("Cruiser", 3)
  #   submarine = Ship.new("Submarine", 2)
  #   game.computer_place_ship
  #   expect(game.comp_render).to eq()
  # end
end