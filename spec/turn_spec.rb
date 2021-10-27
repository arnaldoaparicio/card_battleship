require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    board = Board.new
    setup = Setup.new(board)
    setup2 = Setup.new(board)
    new_turn = Turn.new(setup, setup2)
    expect(new_turn).to be_an_instance_of(Turn)
  end

  it 'display_boards' do
    ship_1 = Ship.new("Cruiser", 3)
    ship_2 = Ship.new("Submarine", 2)
    board = Board.new
    board1 = Board.new
    setup = Setup.new(board)
    setup2 = Setup.new(board1)
    new_turn = Turn.new(setup, setup2)
    board.place(ship_2, ["A1", "A2"])
    board.place(ship_1, ["D2", "D3", "D4"])
    board1.place(ship_2, ["A4", "B4"])
    board1.place(ship_1, ["B2", "C2", "D2"])
    expect(new_turn.display_computer_board).to eq(nil)
    expect(new_turn.display_player_board).to eq(nil)
  end

  # it 'display_boards' do
  #   board = Board.new
  #   setup = Setup.new(board)
  #   setup2 = Setup.new(board)
  #   new_turn = Turn.new(setup, setup2)
  #
  #   expect(new_turn.display_boards).to eq(true)
  # end
end