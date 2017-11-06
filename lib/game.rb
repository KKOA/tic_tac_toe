class Game
  def initialize(board, player1, player2)
    @board = board
    @players = [player1, player2]
  end

  def view_grid
    @board.grid
  end

  def place_piece(x,y)
    @board.grid[x][y] = 'x'
    @board.grid
  end
end
