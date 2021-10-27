
class Setup
  attr_reader :board

  def initialize(board)
    @board = board
  end
  # will need to place ships for computer
  # allow for player to place ships
  # give response after computer places ships,
  # and how to place ships
  # show new board to player
  # respond to invalid placements
  def sub_placement(ship)

    x = [["A1", "A2"],["A2", "A3"],["A3", "A4"],["B1", "B2"],
    ["B2", "B3"],["B3", "B4"],["C1", "C2"],["C2", "C3"],
    ["C3", "C4"],["D1", "D2"],["D2", "D3"],["D3", "D4"],
    ["A1", "B1"],["B1", "C1"],["C1", "D1"],["A2", "B2"],
    ["B2", "C2"],["C2", "D2"],["A3", "B3"],["B3", "C3"],
    ["C3", "D3"],["A4", "B4"],["B4", "C4"],["C4", "D4"]]


    placement = x.sample
    board.place(ship, placement)
  end

  def cruiser_placement(ship)
    x = [["A1", "A2", "A3"],["A2", "A3", "A4"],["B1", "B2", "B3"],
    ["B2", "B3", "B4"],["C1", "C2", "C3"],["C2", "C3", "C4"],
    ["D1", "D2", "D3"],["D2", "D3", "D4"],["A1", "B1", "C1"],
    ["B1", "C1", "D1"],["A2", "B2", "C2"],["B2", "C2", "D2"],
    ["A3", "B3", "C3"],["B3", "C3", "D3"],["A4", "B4", "C4"],
    ["B4", "C4", "D4"]]

      placement = x.sample do |place|
    until board.valid_placement?(ship, placement) == true

      end
      board.place(ship, placement)
    end
  end

  def computer_render
    puts board.render(ship_present=false)
  end

  def player_render
    puts board.render(ship_present=true)
  end

  def player_placement(ship)
    x = [["A1", "A2", "A3"],["A2", "A3", "A4"],["B1", "B2", "B3"],
    ["B2", "B3", "B4"],["C1", "C2", "C3"],["C2", "C3", "C4"],
    ["D1", "D2", "D3"],["D2", "D3", "D4"],["A1", "B1", "C1"],
    ["B1", "C1", "D1"],["A2", "B2", "C2"],["B2", "C2", "D2"],
    ["A3", "B3", "C3"],["B3", "C3", "D3"],["A4", "B4", "C4"],
    ["B4", "C4", "D4"]]
    # ship = Ship.new("Cruiser", 3)
    placement = gets.chomp
    if x.include?(placement)
      board.place(ship, placement)
    else
      p "Those are invalid coordinates. Please try again:"
      placement = gets.chomp
    end
  end
end
