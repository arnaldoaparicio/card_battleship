
class Setup
  attr_reader :computer_board,
              :player_board

  def initialize
    @computer_board = Board.new
    @player_board   = Board.new
  end
  # will need to place ships for computer
  # allow for player to place ships
  # give response after computer places ships,
  # and how to place ships
  # show new board to player
  # respond to invalid placements
  def sub_placement(ship, placement)

    x = [["A1", "A2"],["A2", "A3"],["A3", "A4"],["B1", "B2"],
    ["B2", "B3"],["B3", "B4"],["C1", "C2"],["C2", "C3"],
    ["C3", "C4"],["D1", "D2"],["D2", "D3"],["D3", "D4"],
    ["A1", "B1"],["B1", "C1"],["C1", "D1"],["A2", "B2"],
    ["B2", "C2"],["C2", "D2"],["A3", "B3"],["B3", "C3"],
    ["C3", "D3"],["A4", "B4"],["B4", "C4"],["C4", "D4"]]


    placement = x.sample
<<<<<<< HEAD
    @computer_board.place(ship, placement)
=======
    @board.place(ship, placement)
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
  end

  def cruiser_placement(ship, placement)
    x = [["A1", "A2", "A3"],["A2", "A3", "A4"],["B1", "B2", "B3"],
    ["B2", "B3", "B4"],["C1", "C2", "C3"],["C2", "C3", "C4"],
    ["D1", "D2", "D3"],["D2", "D3", "D4"],["A1", "B1", "C1"],
    ["B1", "C1", "D1"],["A2", "B2", "C2"],["B2", "C2", "D2"],
    ["A3", "B3", "C3"],["B3", "C3", "D3"],["A4", "B4", "C4"],
    ["B4", "C4", "D4"]]

      placement = x.sample do |place|
        y = false
        while y == false
<<<<<<< HEAD
        y = @computer_board.valid_placement?(ship, placement)
        end
      end
      # require "pry"; binding.pry
      @computer_board.place(ship, placement)
  end

  def computer_render
    puts @computer_board.render(ship_present=false)
  end

  def player_render
    p @player_board.render(ship_present=true)
=======
        y = @board.valid_placement?(ship, placement)
        end
      end
      # require "pry"; binding.pry
      @board.place(ship, placement)
  end

  def computer_render
    puts @board.render(ship_present=true)
  end

  def player_render
    puts @board.render(ship_present=true)
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
  end

  def player_cruiser_placement(ship)
    x = [["A1", "A2", "A3"],["A2", "A3", "A4"],["B1", "B2", "B3"],
    ["B2", "B3", "B4"],["C1", "C2", "C3"],["C2", "C3", "C4"],
    ["D1", "D2", "D3"],["D2", "D3", "D4"],["A1", "B1", "C1"],
    ["B1", "C1", "D1"],["A2", "B2", "C2"],["B2", "C2", "D2"],
    ["A3", "B3", "C3"],["B3", "C3", "D3"],["A4", "B4", "C4"],
    ["B4", "C4", "D4"]]
    # ship = Ship.new("Cruiser", 3)
    placement = gets.chomp.split
    # require "pry"; binding.pry
    if x.include?(placement)
      @board.place(ship, placement)
    else
      p "Those are invalid coordinates. Please try again:"
      placement = gets.chomp
    end
  end

  def player_sub_placement(ship)
    x = [["A1", "A2"],["A2", "A3"],["A3", "A4"],["B1", "B2"],
    ["B2", "B3"],["B3", "B4"],["C1", "C2"],["C2", "C3"],
    ["C3", "C4"],["D1", "D2"],["D2", "D3"],["D3", "D4"],
    ["A1", "B1"],["B1", "C1"],["C1", "D1"],["A2", "B2"],
    ["B2", "C2"],["C2", "D2"],["A3", "B3"],["B3", "C3"],
    ["C3", "D3"],["A4", "B4"],["B4", "C4"],["C4", "D4"]]

    placement = gets.chomp.split
    # require "pry"; binding.pry
    if x.include?(placement)
<<<<<<< HEAD
      @player_board.place(ship, placement)
=======
      @board.place(ship, placement)
>>>>>>> ea413ac49f5b3240d7d7b9cb9d2bf6c2293551a9
    else
      p "Those are invalid coordinates. Please try again:"
      placement = gets.chomp
    end
  end
end
