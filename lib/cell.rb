

class Cell
  attr_reader :coordinate,
  :ship,
  :fire_upon,
  :ship_present
  def initialize(coordinate, ship_present: false)
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
  # def render(ship_present: false)
  #     ship_present = true
  #   require "pry"; binding.pry
  #   if @fire_upon == true && empty? == true
  #     return "M"
  #   end
  #   if @fired_upon == false && ship_present == true
  #     return 'S'
  #   end
  #   return '.'
  #    if @fire_upon == true && empty? == false
  #      p "H"
  #    end
  #    if empty? == false && ship.sunk? == true
  #      p "X"
  #      # elsif fire_upon == false && place_ship(ship) == true
  #         p "S"
  #    end
  #
  #
  #    end
  end
