class Game
  def initialize(board, player1, player2)
    @board = board
    @players = [player1, player2]
  end

  def view_grid
    @board.grid
  end
end
