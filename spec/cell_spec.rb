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

  it 'throws an error when you try to hit it twice' do
    cell.hit
    expect{cell.hit}.to raise_error('Cell has already been hit!')
  end

end
