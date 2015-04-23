require 'board'

describe Board do
  
  let(:cell){double :cell}
  let(:cell_class){double :cell_class, :new => cell}  
  let(:board){Board.new({size: 100, cell: cell_class})}

  it 'has a size of 100 when created' do
    expect(board.grid.count).to eq 100
  end


end
