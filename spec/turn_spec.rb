require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
    new_turn = Turn.new()
    setup = Setup.new
    expect(new_turn).to be_an_instance_of(Turn)
  end

  it 'display_boards' do
    setup = Setup.new
    new_turn = Turn.new

    expect(new_turn.display_boards).to eq(new_turn.display_boards)
  end
end
