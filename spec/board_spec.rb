require './lib/board'
require './lib/cell'
require './lib/ship'

RSpec.describe Board do
    it 'exists' do
      board = Board.new
      expect(board).to be_an_instance_of(Board)

    end

    it 'has attributes' do
      board = Board.new
      expect(board.cells).to be_a Hash
      expect(board.cells.keys.length).to eq(16)
      expect(board.cells.values.first).to be_an_instance_of(Cell)
    end

    it 'has a valid coordinate' do
    board = Board.new
    expect(board.cells).to be_a Hash
    expect(board.cells.keys.length).to eq(16)
    expect(board.cells.values.first).to be_an_instance_of(Cell)
    expect(board.valid_coordinate?("A1")).to eq(true)
    expect(board.valid_coordinate?("D4")).to eq(true)
    expect(board.valid_coordinate?("A5")).to eq(false)
    expect(board.valid_coordinate?("E1")).to eq(false)
    expect(board.valid_coordinate?("A22")).to eq(false)
  end

  it 'has valid placement' do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.cells).to be_a Hash
    expect(board.cells.keys.length).to eq(16)
    expect(board.cells.values.first).to be_an_instance_of(Cell)


    expect(board.valid_placement?(cruiser, ["A1", "A2"])).to eq(false)
    expect(board.valid_placement?(submarine, ["A2", "A3", "A4"])).to eq(false)
  end

  it 'has consecutive coordinates' do
    board = Board.new
    cruiser = Ship.new("Cruiser", 3)
    submarine = Ship.new("Submarine", 2)
    expect(board.cells).to be_a Hash
    expect(board.cells.keys.length).to eq(16)
    expect(board.cells.values.first).to be_an_instance_of(Cell)

    expect(board.valid_placement?(cruiser, ["A1", "A2", "A4"])).to eq(false)
  end
end
