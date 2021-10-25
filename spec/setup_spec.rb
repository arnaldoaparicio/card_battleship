require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'

RSpec.describe Setup do
  it 'exists' do
    board = Board.new
    ship = Ship.new("Cruiser", 3)
    setup = Setup.new(board, ship)

    expect(setup).to be_an_instance_of(Setup)
  end

  it "#computer_setup" do
    board = Board.new
    ship = Ship.new("Cruiser", 3)
    setup = Setup.new(board, ship)

    expect(setup.computer_setup).to eq(true)
  end
end