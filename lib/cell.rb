
class Cell
  attr_reader :coordinate,
  :ship,
  :fire_upon,
  :ship_present
  
  def initialize(coordinate, ship_present: false)
    @coordinate = coordinate
    @ship       = nil
    @fire_upon  = false
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

  def render(ship_present = false)
    if fired_upon? == false && empty? == false && ship_present == true
      return "S"
    end
    if fired_upon? == false
      return "."
    end
    if fired_upon? == true && empty? == true
      return "M"
    end

    if ship.sunk? == true
      return "X"
    end
    if fired_upon? == true && empty? == false
      return "H"
    end
  end
end
