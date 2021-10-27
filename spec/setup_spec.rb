require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'

RSpec.describe Setup do
  it 'exists' do
    board = Board.new
    ship = Ship.new("Cruiser", 3)
    setup = Setup.new

    expect(setup).to be_an_instance_of(Setup)
  end

  it "places a sub" do
    board = Board.new
    setup = Setup.new
    ship = Ship.new("Submarine", 2)
    expect(setup.sub_placement(ship, [])).to eq([ship, ship])
  end

  it "places a cruiser" do
    board = Board.new
    setup = Setup.new
    ship = Ship.new("Cruiser", 3)
    #method is returning the 3 random coordinates for the cruiser in an array
    expect(setup.cruiser_placement(ship, [])).to be_an Array
  end

  it "#render" do
    board = Board.new
    setup = Setup.new
    ship = Ship.new("Submarine", 2)
    ship_1 = Ship.new("Cruiser", 3)
    setup.sub_placement(ship, [])
    setup.cruiser_placement(ship_1, [])
    setup.computer_render
    # expect(setup.computer_render).to eq(true)
    #method is returning the 3 random coordinates for the cruiser in an array
    expect(setup.cruiser_placement(ship, [])).to be_an Array
  end
end
