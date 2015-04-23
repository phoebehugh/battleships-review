require 'board'
require 'cell'

describe Board do
  
  let(:board){Board.new({size: 100, cell: Cell.new})}

  it 'has a size of 100 when created' do
    expect(board.grid.count).to eq 100
  end


end
