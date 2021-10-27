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
end