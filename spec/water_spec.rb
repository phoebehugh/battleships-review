require 'water'

describe Water do

  let(:water) { Water.new }

  it 'is not hit when created' do
    expect(water.hit?).to eq false
  end

  it 'can be hit' do
    water.hit!
    expect(water.hit?).to eq true
  end

end