require 'game'
require 'board'
describe Game do
  let(:player1) { double(Player, name: 'tom', flag: 'x') }
  let(:player2) { double(Player, name: 'mary', flag: 'o') }
  # allow​(player1).to receive(​:flag) {​ 'x' ​}

  let(:board) { Board.new }
  subject(:game) { described_class.new(board, player1, player2) }

  describe '#view_grid' do
    it 'return board' do
      expect_val = Array.new(3) { Array.new(3, '-') }
      expect(game.view_grid).to eq expect_val
    end
  end

  describe '#claim' do
    context 'board empty' do
      it 'player1 claim cell' do
        row = 0
        col = 0
        expect_val = [['x', '-', '-'], ['-', '-', '-'], ['-', '-', '-']]
        expect(game.claim(row, col)).to eq expect_val
        expect(game.current_player.name).to eq player2.name
      end

      it 'invalid coordinates' do
        row = 5
        col = 3
        expect_val = "#{row}, #{col} is an invalid cell. Please try again."
        expect(game.claim(row, col)).to eq expect_val
      end
    end

    context 'Other player turn' do
      it 'player2 claim cell' do
        row = 0
        col = 0
        game.claim(row, col)
        row = 1
        expect_val = [['x', '-', '-'], ['o', '-', '-'], ['-', '-', '-']]
        expect(game.claim(row, col)).to eq expect_val
      end

      it 'cell already taken' do
        row = 0
        col = 1
        game.claim(row, col)
        expect_val = "#{row}, #{col} is already taken. Please select another cell"
        expect(game.claim(row, col)).to eq expect_val
        expect(game.current_player.name).to eq player2.name
      end
    end
  end

  describe '#current_player' do
    it "return current_player's turn" do
      expect(game.current_player.name).to eq player1.name
    end
  end
end
