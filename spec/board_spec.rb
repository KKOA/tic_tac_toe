require 'board'

describe Board do
  subject(:board) { described_class.new() }
  describe '#grid' do
    it 'has method' do
      expect(board).to respond_to(:grid)
    end
    it 'return grid' do
      expect_val = Array.new(3) { Array.new(3, '-') }
      expect(board.grid).to eq expect_val
    end
  end
  describe '#on_grid' do
    context 'coordinates on the grid' do
      row = 0
      col = 0
      it 'reurn true' do
        expect(board.on_grid?(row, col)).to eq true
      end
    end
    context 'coordinates off the grid' do
      row = 3
      col = 3
      it 'return false' do
        expect(board.on_grid?(row, col)).to eq false
      end
    end
  end
end
