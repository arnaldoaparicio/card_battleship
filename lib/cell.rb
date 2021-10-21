

class Cell
  attr_reader :coordinate,
              :ship
  def initialize(coordinate)
    @coordinate = coordinate
    @ship       = nil
  end

  def empty?
    @ship == nil
  end
  # def ship
  #
  # end
  #
  def place_ship(ship)
    @ship = ship
  end

  def fired_upon?
    @coordinate == fire_upon
    # require "pry"; binding.pry
  end
# still working on this code.
# Need this method to cause the fired_upon? to return true
  def fire_upon
    @coordinate == @coordinate
    if place_ship(ship) == true
      ship.hit
    # require "pry"; binding.pry
    end
  end
end
