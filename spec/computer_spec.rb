require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'

RSpec.describe Setup do
  it 'exists' do
    board = Board.new
    ship = Ship.new("Cruiser", 3)
    setup = Setup.new(board)

    expect(setup).to be_an_instance_of(Setup)
  end

  xit "#computer_setup" do
    board = Board.new
    ship = Ship.new("Cruiser", 3)
    setup = Setup.new(board)

    expect(setup.computer_setup).to eq(true)
  end


  xit 'has a submarine only' do
    board = Board.new
    submarine = Ship.new("Submarine", 2)
    submarine2 = Ship.new("Submarine", 2)
    setup = Setup.new(board)
    board.place(submarine, ["A1", "A2"])
    board.place(submarine2, ["B1", "B2"])
    expect(board.valid_placement?(submarine, ["A1", "A2"])).to be(true)
    expect(board.valid_placement?(submarine2, ["B1", "B2"])).to be(false)
  end

  it "places a sub" do
    board = Board.new
    setup = Setup.new(board)
    submarine = Ship.new("Submarine", 2)
    expect(setup.sub_placement(submarine, [])).to eq(true)
    # expect(setup.cruiser_placement).to eq(false)
  end
end
