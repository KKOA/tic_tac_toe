require 'board'

describe Board do
  subject(:board) { described_class.new() }
  describe '#grid' do
    it 'return grid' do
      expect_val = Array.new(3) { Array.new(3, '-') }
      expect(board.grid).to eq expect_val
    end
  end

  describe '#on_grid?' do
    context 'coordinates on the grid' do
      row = 0
      col = 0
      it 'return true' do
        expect(board.on_grid?(row, col)).to eq true
      end
    end

    context 'coordinates off the grid' do
      row = 3
      col = 3
      it 'return true' do
        expect(board.on_grid?(row, col)).to eq false
      end
    end
  end

  describe '#avaliable?' do
    context 'cell not taken' do
      it 'return true' do
        row = 0
        col = 0
        expect(board.avaliable?(row, col)).to eq true
      end
    end

    context 'cell already claimed' do
      it 'return false' do
        row = 0
        col = 0
        board.grid[row][col] = 'x'
        expect(board.avaliable?(row, col)).to eq false
      end
    end
  end

  describe '#full?' do
    context 'empty grid' do
      it 'return false' do
        expect(board.full?).to eq false
      end
    end

    context 'full grid' do
      it 'return true' do
        board.grid.map! { |row| row.map { 'o' } }
        expect(board.full?).to eq true
      end
    end
  end
end
