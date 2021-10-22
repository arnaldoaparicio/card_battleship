require './lib/board'

RSpec.describe Board do
  # before(:each) do
    it 'exists' do
      board = Board.new
      expect(board).to be_an_instance_of(Board)

    end

    it 'has attributes' do
      board = Board.new
      expect(board.cells).to be_a Hash
      expect(board.keys.length).to eq(16)
      expect(board.values).to include?(Cell)
    end
  end
