require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  it 'has water content when initialized' do
    cell.content = ship
    expect(cell.content).to eq ship
  end
end