require 'board'

describe Board do
  
  let(:cell){double :first_cell}
  let(:second_cell){double :second_cell}
  let(:cell_class){double :cell_class, :new => cell}  
  let(:board){Board.new({size: 100, cell: cell_class})}
  let(:ship){double :ship, size: 1}

  it 'has a size of 100 when created' do
    expect(board.grid.count).to eq 100
  end

  it 'can place a horizontal ship of 3' do
    board.grid[:A1] = second_cell
    expect(second_cell).to receive(:content=).with ship
    board.place ship, :A1
  end

end
