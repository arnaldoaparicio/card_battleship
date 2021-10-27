require './lib/ship'
require './lib/cell'
require './lib/board'
require './lib/game'
require './lib/setup'
require './lib/turn'

RSpec.describe Turn do
  it 'exists' do
<<<<<<< HEAD
    new_turn = Turn.new
=======
    new_turn = Turn.new()
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
    setup = Setup.new
    expect(new_turn).to be_an_instance_of(Turn)
  end

  it 'display_boards' do
    setup = Setup.new
    new_turn = Turn.new
<<<<<<< HEAD
    expect(new_turn.display_boards).to eq(new_turn.display_boards)
  end
end
=======

    expect(new_turn.display_boards).to eq(new_turn.display_boards)
  end
end
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
