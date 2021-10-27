class Turn
attr_reader :computer_player,
            :human_player
<<<<<<< HEAD
  def initialize
    @computer_player = computer_player
    @human_player    = human_player
=======
  def initialize(computer_player, human_player)
    @computer_player = computer_player
    @human_player    = human_player

>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
  end

  def display_boards
    puts "=============COMPUTER BOARD============="
<<<<<<< HEAD
=======
    require "pry"; binding.pry
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
    puts setup.computer_render
    puts "==============PLAYER BOARD=============="
  end
end
