class Turn
attr_reader :computer_player,
            :human_player

  def initialize(computer_player, human_player)
    @computer_player = computer_player
    @human_player    = human_player
  end

  def display_computer_board
    @computer_player.computer_render
  end

  def display_player_board
    @human_player.player_render
  end

  def player_shot(coordinate)
    computer_player.board.cells[coordinate].fire_upon
  end

#This method still needs to be completed
  def computer_shot(coordinate)
    human_player.board.cells[coordinate].fire_upon
  end
end