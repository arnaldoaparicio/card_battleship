

class Board
  attr_reader :cells

  def initialize
    @cells = {
      "A1" => Cell.new("A1"),
      "A2" => Cell.new("A2"),
      "A3" => Cell.new("A3"),
      "A4" => Cell.new("A4"),
      "B1" => Cell.new("B1"),
      "B2" => Cell.new("B2"),
      "B3" => Cell.new("B3"),
      "B4" => Cell.new("B4"),
      "C1" => Cell.new("C1"),
      "C2" => Cell.new("C2"),
      "C3" => Cell.new("C3"),
      "C4" => Cell.new("C4"),
      "D1" => Cell.new("D1"),
      "D2" => Cell.new("D2"),
      "D3" => Cell.new("D3"),
      "D4" => Cell.new("D4")
    }


  end

  def valid_coordinate?(exists)
    @cells.has_key?(exists)
  end

  def valid_placement?(ship, placement)
    x = [["A1", "A2"],["A2", "A3"],["A3", "A4"],["B1", "B2"],
    ["B2", "B3"],["B3", "B4"],["C1", "C2"],["C2", "C3"],
    ["C3", "C4"],["D1", "D2"],["D2", "D3"],["D3", "D4"],
    ["A1", "B1"],["B1", "C1"],["C1", "D1"],["A2", "B2"],
    ["B2", "C2"],["C2", "D2"],["A3", "B3"],["B3", "C3"],
    ["C3", "D3"],["A4", "B4"],["B4", "C4"],["C4", "D4"],
    ["A1", "A2", "A3"],["A2", "A3", "A4"],["B1", "B2", "B3"],
    ["B2", "B3", "B4"],["C1", "C2", "C3"],["C2", "C3", "C4"],
    ["D1", "D2", "D3"],["D2", "D3", "D4"],["A1", "B1", "C1"],
    ["B1", "C1", "D1"],["A2", "B2", "C2"],["B2", "C2", "D2"],
    ["A3", "B3", "C3"],["B3", "C3", "D3"],["A4", "B4", "C4"],
    ["B4", "C4", "D4"]]


    ship.length == placement.count && x.include?(placement) && placement.all? {|coordinate| @cells[coordinate].empty?}
  end

  def place(ship, placement)
    valid_placement?(ship, placement)
    # placement.each_slice(1).to_a.map do |coordinate|
    placement.map do |coordinate|
      @cells[coordinate].place_ship(ship)
    end
  end

  def render(ship_present=false)
    row_a = "#{@cells["A1"].render(ship_present)} #{@cells["A2"].render(ship_present)} #{@cells["A3"].render(ship_present)} #{@cells["A4"].render(ship_present)}"
    row_b = "#{@cells["B1"].render(ship_present)} #{@cells["B2"].render(ship_present)} #{@cells["B3"].render(ship_present)} #{@cells["B4"].render(ship_present)}"
    row_c = "#{@cells["C1"].render(ship_present)} #{@cells["C2"].render(ship_present)} #{@cells["C3"].render(ship_present)} #{@cells["C4"].render(ship_present)}"
    row_d = "#{@cells["D1"].render(ship_present)} #{@cells["D2"].render(ship_present)} #{@cells["D3"].render(ship_present)} #{@cells["D4"].render(ship_present)}"

    game = "  1 2 3 4 \nA #{row_a} \nB #{row_b} \nC #{row_c} \nD #{row_d} \n"
    game
  end
end
