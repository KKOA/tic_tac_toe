require 'game'
require 'board'
describe Game do
  let(:player1) { double(Player, name: 'tom') }
  let(:player2) { double(Player, name: 'mary') }
  let(:board) { Board.new }
  subject(:game) { described_class.new(board, player1, player2) }

  describe '#view_grid' do
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
        expect_val = [['x','-','-'],['-','-','-'],['-','-','-']]
        expect(game.place_piece(row, col)).to eq expect_val
        expect(game.current_player.name).to eq player2.name
      end

      it 'with invalid coordinates' do
        row = 5
        col = 3
        expect_val = "#{row} , #{col} is an invalid cell. Please try again."
        expect(game.place_piece(row, col)).to eq expect_val
      end
    end
    context 'Other player turn' do
      it 'with valid coordinates' do
        row = 0
        col = 0
        game.place_piece(row, col)
        row = 1
        expect_val = [['x','-','-'],['o','-','-'],['-','-','-']]
        expect(game.place_piece(row, col)).to eq expect_val
        p game.view_grid
      end
      # it 'with valid coordinates' do
      #   row = 0
      #   col = 1
      #   expect_val = "#{row} , #{col} is already taken. Please select nother cell"
      #   expect_val[row][col] = 'o'
      #   expect(game.place_piece(row, col)).to eq expect_val
      #   expect(game.current_player.name).to eq player1.name
      # end
    end
  end
  describe '#current_player' do
    it "return current_player's turn" do
      expect(game.current_player.name).to eq player1.name
    end
  end
end
