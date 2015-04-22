require 'ship'

describe Ship do
  
  let(:ship) { Ship.new }

  it 'is not hit when created' do
    expect(ship).to be_floating
  end

  it 'is not floating once sunk' do
    ship.sink!
    expect(ship).not_to be_floating
  end
end
