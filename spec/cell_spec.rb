require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:ship) { double :ship }

  it 'can have content' do
    cell.content = ship
    expect(cell.content).to eq ship
  end

  it 'can be hit' do
    cell.hit
    expect(cell).to be_hit
  end

end