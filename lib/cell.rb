

class Cell
  attr_reader :coordinate,
              :ship,
              :fire_upon
  def initialize(coordinate)
    @coordinate = coordinate
    @ship       = nil
    @fire_upon  = false
    # @render     = "."
  end

  def empty?
    @ship == nil
  end

  def place_ship(ship)
    @ship = ship
  end

  def fired_upon?
    @fire_upon
  end

  def fire_upon
    @fire_upon = true
    if empty? == false
      ship.hit
    end
  end
# still incomplete code below
  def render(ship_present)
    ship_present = @ship
    if @fire_upon = true && @ship = nil
    p "M"
    elsif @fire_upon = && @ship = place_ship(ship)
    p "H"
    elsif @fire_upon = true && ship.sunk?
    p "X"
    elsif fire_upon = false && place_ship(ship) == true
    p "S"

    require "pry"; binding.pry
  #   if fired_upon? = false
  #     puts "."
  end
end
