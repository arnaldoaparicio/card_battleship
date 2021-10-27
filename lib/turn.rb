class Turn
attr_reader :computer_player,
            :human_player
  def initialize
    @computer_player = computer_player
    @human_player    = human_player
  end

  def display_boards
    puts "=============COMPUTER BOARD============="
    puts setup.computer_render
    puts "==============PLAYER BOARD=============="
  end
end
