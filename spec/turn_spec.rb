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
    comp_board = Board.new
    human_board = Board.new
    comp_setup = Setup.new(comp_board)
    human_setup = Setup.new(human_board)
    new_turn = Turn.new(comp_setup, human_setup)
    comp_board.place(ship_2, ["A1", "A2"])
    comp_board.place(ship_1, ["D2", "D3", "D4"])
    human_board.place(ship_2, ["A4", "B4"])
    human_board.place(ship_1, ["B2", "C2", "D2"])
    #confirmed via pry
    expect(new_turn.display_computer_board).to eq(nil)
    expect(new_turn.display_player_board).to eq(nil)
  end

  it 'player shot' do
    ship_1 = Ship.new("Cruiser", 3)
    ship_2 = Ship.new("Submarine", 2)
    comp_board = Board.new
    human_board = Board.new
    comp_setup = Setup.new(comp_board)
    human_setup = Setup.new(human_board)
    new_turn = Turn.new(comp_setup, human_setup)
    comp_board.place(ship_2, ["A1", "A2"])
    comp_board.place(ship_1, ["D2", "D3", "D4"])
    human_board.place(ship_2, ["A4", "B4"])
    human_board.place(ship_1, ["B2", "C2", "D2"])



    expect(new_turn.player_shot("A1")).to eq(nil)
    #confirmed via pry
    expect(new_turn.display_computer_board).to eq(nil)
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