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
end
