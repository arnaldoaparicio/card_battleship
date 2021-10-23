Ship
A Ship object will represent a single ship on the board. It will be able to keep track of how much health it has, take hits, and report if it is sunk or not. A ship should start off with health equal to it’s length.

The Ship class should follow this interaction pattern:

pry(main)> require './lib/ship'
#=> true

pry(main)> cruiser = Ship.new("Cruiser", 3)
#=> #<Ship:0x00007feb05112d10...>

pry(main)> cruiser.name
#=> "Cruiser"

pry(main)> cruiser.length
#=> 3

pry(main)> cruiser.health
#=> 3

pry(main)> cruiser.sunk?
#=> false

pry(main)> cruiser.hit

pry(main)> cruiser.health
#=> 2

pry(main)> cruiser.hit

pry(main)> cruiser.health
#=> 1

pry(main)> cruiser.sunk?
#=> false

pry(main)> cruiser.hit

pry(main)> cruiser.sunk?
#=> true
____________________________________

Cell
A Cell object is a single cell on our board. A Cell can either contain a Ship or nothing.

pry(main)> require './lib/ship'
# => true

pry(main)> require './lib/cell'
# => true

pry(main)> cell = Cell.new("B4")
# => #<Cell:0x00007f84f0ad4720...>

pry(main)> cell.coordinate
# => "B4"

pry(main)> cell.ship
# => nil

pry(main)> cell.empty?
# => true

pry(main)> cruiser = Ship.new("Cruiser", 3)
# => #<Ship:0x00007f84f0891238...>

pry(main)> cell.place_ship(cruiser)

pry(main)> cell.ship
# => #<Ship:0x00007f84f0891238...>

pry(main)> cell.empty?
# => false

____________________________________

Additionally, a cell knows when it has been fired upon. When it is fired upon, the cell’s ship should be damaged if it has one:

pry(main)> require './lib/ship'
# => true

pry(main)> require './lib/cell'
# => true

pry(main)> cell = Cell.new("B4")
# => #<Cell:0x00007f84f0ad4720...>

pry(main)> cruiser = Ship.new("Cruiser", 3)
# => #<Ship:0x00007f84f0891238...>

pry(main)> cell.place_ship(cruiser)

pry(main)> cell.fired_upon?
# => false

pry(main)> cell.fire_upon

pry(main)> cell.ship.health
# => 2

pry(main)> cell.fired_upon?
# => true

____________________________________


Finally, a Cell will have a method called render which returns a String representation of the Cell for when we need to print the board. A cell can potentially be rendered as:

”.” if the cell has not been fired upon.
“M” if the cell has been fired upon and it does not contain a ship (the shot was a miss).
“H” if the cell has been fired upon and it contains a ship (the shot was a hit).
“X” if the cell has been fired upon and its ship has been sunk.
Additionally, we will include an optional boolean argument to indicate if we want to reveal a ship in the cell even if it has not been fired upon. This should render a cell that has not been fired upon and contains a ship as an “S”. This will be useful for showing the user where they placed their ships and for debugging.

pry(main)> cell_1 = Cell.new("B4")
# => #<Cell:0x00007f84f11df920...>

pry(main)> cell_1.render
# => "."

pry(main)> cell_1.fire_upon

pry(main)> cell_1.render
# => "M"

pry(main)> cell_2 = Cell.new("C3")
# => #<Cell:0x00007f84f0b29d10...>

pry(main)> cruiser = Ship.new("Cruiser", 3)
# => #<Ship:0x00007f84f0ad4fb8...>

pry(main)> cell_2.place_ship(cruiser)

pry(main)> cell_2.render
# => "."

# Indicate that we want to show a ship with the optional argument
pry(main)> cell_2.render(true)
# => "S"

pry(main)> cell_2.fire_upon

pry(main)> cell_2.render
# => "H"

pry(main)> cruiser.sunk?
# => false

pry(main)> cruiser.hit

pry(main)> cruiser.hit

pry(main)> cruiser.sunk?
# => true

pry(main)> cell_2.render
# => "X"

____________________________________

Board

The Board class is responsible for keeping track of cells, validating coordinates, validating ship placements, placing ships, and rendering a visual representation of itself.

The Cells
The board is responsible for keeping track of all the cells. Since our board is 4 x 4, it will have 16 Cell objects. It will keep track of these cells in a hash where the coordinates of the cell are the keys that point to Cell objects:

pry(main)> require './lib/board'
# => true

pry(main)> board = Board.new
# => #<Board:0x00007ff0728c8010...>

pry(main)> board.cells
# =>
{
 "A1" => #<Cell:0x00007ff0728a3f58...>,
 "A2" => #<Cell:0x00007ff0728a3ee0...>,
 "A3" => #<Cell:0x00007ff0728a3e68...>,
 "A4" => #<Cell:0x00007ff0728a3df0...>,
 "B1" => #<Cell:0x00007ff0728a3d78...>,
 "B2" => #<Cell:0x00007ff0728a3d00...>,
 "B3" => #<Cell:0x00007ff0728a3c88...>,
 "B4" => #<Cell:0x00007ff0728a3c10...>,
 "C1" => #<Cell:0x00007ff0728a3b98...>,
 "C2" => #<Cell:0x00007ff0728a3b20...>,
 "C3" => #<Cell:0x00007ff0728a3aa8...>,
 "C4" => #<Cell:0x00007ff0728a3a30...>,
 "D1" => #<Cell:0x00007ff0728a39b8...>,
 "D2" => #<Cell:0x00007ff0728a3940...>,
 "D3" => #<Cell:0x00007ff0728a38c8...>,
 "D4" => #<Cell:0x00007ff0728a3850...>
}

____________________________________

Testing the #cells method is a bit tricky because the Cell objects are created in the Board class and not in our tests. We can’t specify exactly what the return value should be because we don’t have reference to the exact cell objects we expect in the hash. Instead, we can assert what we do know about this hash. It’s a hash, it should have 16 key/value pairs, and those keys point to cell objects.

____________________________________

Validating Coordinates
Our board should be able to tell us if a coordinate is on the board or not:

pry(main)> board.valid_coordinate?("A1")
# => true

pry(main)> board.valid_coordinate?("D4")
# => true

pry(main)> board.valid_coordinate?("A5")
# => false

pry(main)> board.valid_coordinate?("E1")
# => false

pry(main)> board.valid_coordinate?("A22")
# => false

____________________________________

Validating Placements
Additionally, a Board should be able to tell us if a placement for a ship is valid or not. Our Board should have a method called valid_placement? that takes two arguments: a Ship object and an array of Coordinates.

There are many things we need to check for validating ship placement. Let’s use this setup:

pry(main)> require './lib/board'
# => true

pry(main)> require './lib/ship'
# => true

pry(main)> board = Board.new
# => #<Board:0x00007fcb0d9db478...>

pry(main)> cruiser = Ship.new("Cruiser", 3)
# => #<Ship:0x00007fcb0d989510...>

pry(main)> submarine = Ship.new("Submarine", 2)    
# => #<Ship:0x00007fcb0e8402c0...>
First, the number of coordinates in the array should be the same as the length of the ship:

pry(main)> board.valid_placement?(cruiser, ["A1", "A2"])
# => false

pry(main)> board.valid_placement?(submarine, ["A2", "A3", "A4"])
# => false
Next, make sure the coordinates are consecutive:

pry(main)> board.valid_placement?(cruiser, ["A1", "A2", "A4"])
# => false

pry(main)> board.valid_placement?(submarine, ["A1", "C1"])
# => false

pry(main)> board.valid_placement?(cruiser, ["A3", "A2", "A1"])
# => false

pry(main)> board.valid_placement?(submarine, ["C1", "B1"])
# => false
Finally, coordinates can’t be diagonal:

pry(main)> board.valid_placement?(cruiser, ["A1", "B2", "C3"])
# => false

pry(main)> board.valid_placement?(submarine, ["C2", "D3"])
# => false
If all the previous checks pass then the placement should be valid:

pry(main)> board.valid_placement?(submarine, ["A1", "A2"])
# => true

pry(main)> board.valid_placement?(cruiser, ["B1", "C1", "D1"])
# => true