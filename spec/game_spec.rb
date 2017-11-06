require 'game'
require 'board'
describe Game do
  let(:player1) { double(Player, name: 'tom') }
  let(:player2) { double(Player, name: 'mary') }
  let(:board) { Board.new }
  subject(:game) { described_class.new(board, player1, player2) }

  describe '#view_grid' do
    it 'has method' do
      expect(game).to respond_to(:view_grid)
    end

    it 'return board' do
      expect_val = Array.new(3) { Array.new(3, '-') }
      expect(game.view_grid).to eq expect_val
    end
  end

  describe '#place_piece' do
    context 'on board empty' do
      it 'with valid coordinates' do
        row = 0
        col = 0
        expect_val = game.view_grid
        expect_val[row][col] = 'x'
        expect(game.place_piece(row, col)).to eq expect_val
      end

      it 'with invalid coordinates' do
        row = 5
        col = 3
        expect_val = "#{row} , #{col} is an invalid cell. Please try again"
        expect(game.place_piece(row, col)).to eq expect_val
      end
    end
  end
end