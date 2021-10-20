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