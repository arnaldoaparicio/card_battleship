require './lib/board'
# require './lib/cell'

RSpec.describe Board do
  # before(:each) do
    it 'exists' do
      board = Board.new
      expect(board).to be_an_instance_of(Board)

    end

    it 'has attributes' do
      board = Board.new
      # cells = {
      #               "A1" => Cell.new("A1"),
      #               "A2" => Cell.new("A2"),
      #               "A3" => Cell.new("A3"),
      #               "A4" => Cell.new("A4"),
      #               "B1" => Cell.new("B1"),
      #               "B2" => Cell.new("B2"),
      #               "B3" => Cell.new("B3"),
      #               "B4" => Cell.new("B4"),
      #               "C1" => Cell.new("C1"),
      #               "C2" => Cell.new("C2"),
      #               "C3" => Cell.new("C3"),
      #               "C4" => Cell.new("C4"),
      #               "D1" => Cell.new("D1"),
      #               "D2" => Cell.new("D2"),
      #               "D3" => Cell.new("D3"),
      #               "D4" => Cell.new("D4")
      #               }
      expect(board.cells).to be_a Hash
      expect(board.keys.length).to eq(16)
      expect(board.values).to include?(Cell)
    end
  end