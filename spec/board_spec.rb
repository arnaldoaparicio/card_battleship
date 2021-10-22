require './lib/board'
require './lib/cell'

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
  end
