require './lib/ship'
require './lib/cell'

RSpec.describe Cell do
  it 'exists' do
    cell = Cell.new("B4")
    expect(cell).to be_an_instance_of(Cell)
  end

  it 'coordinate' do
    cell = Cell.new("B4")
    expect(cell.coordinate).to eq("B4")
  end

  it 'ship' do
    cell = Cell.new("B4")
    expect(cell.ship).to eq(nil)
  end

  it 'empty?' do
    cell = Cell.new("B4")
    expect(cell.empty?).to eq(true)
  end

  it 'place_ship' do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    expect(cell.ship).to eq(cruiser)
    expect(cell.empty?).to eq(false)
  end

  it 'fired_upon? false by default' do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    cell.fired_upon?
    expect(cell.fired_upon?).to eq(false)
  end

  it 'fire_upon' do
    cell = Cell.new("B4")
    cruiser = Ship.new("Cruiser", 3)
    cell.place_ship(cruiser)
    expect(cell.fired_upon?).to eq(false)
    cell.fire_upon
    expect(cell.fired_upon?).to eq(true)
    expect(cell.ship.health).to eq(2)
  end

  it 'render' do
    cell_1 = Cell.new("B4")
    expect(cell_1.render).to eq(".")
    cell_1.fire_upon
    expect(cell_1.render).to eq("M")
    cell_2 = Cell.new("C3")
    cruiser = Ship.new("Cruiser", 3)
    cell_2.place_ship(cruiser)
    expect(cell_2.render).to eq(".")
    expect(cell_2.render(true)).to eq("S")
    cell_2.fire_upon
    expect(cell_2.render).to eq("H")
    expect(cruiser.sunk?).to eq(false)
    cruiser.hit
    cruiser.hit
    expect(cruiser.sunk?).to eq(true)
    expect(cell_2.render).to eq("X")
  end
end
