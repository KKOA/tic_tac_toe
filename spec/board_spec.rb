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
end
