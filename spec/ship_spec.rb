require 'ship'

describe Ship do
  
  let(:ship) { Ship.new({size: 2}) }

  it 'can have a size' do
    expect(ship.size).to eq 2
  end

  it 'is not sunk when created' do
    expect(ship).not_to be_sunk
  end

  it 'can be sunk' do
    ship.hit
    ship.hit
    expect(ship).to be_sunk
  end

  it 'can initialize a battleship' do
    battleship = Ship.battleship
    expect(battleship.size).to eq 4
  end

  it 'can initialize an aircraft carrier' do
    aircraft_carrier = Ship.aircraft_carrier
    expect(aircraft_carrier.size).to eq 5
  end

  it 'can initialize a submarine' do
    submarine = Ship.submarine
    expect(submarine.size).to eq 3
  end

  it 'can initialize a cruiser' do
    cruiser = Ship.cruiser
    expect(cruiser.size).to eq 3
  end

  it 'can initialize a destroyer' do
    destroyer = Ship.destroyer
    expect(destroyer.size).to eq 2
  end
end
