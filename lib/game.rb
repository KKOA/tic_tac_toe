class Game
  attr_reader :current_player
  def initialize(board, player1, player2)
    @board = board
    @players = [player1, player2]
    @current_player = player1
  end

  def view_grid
    @board.grid
  end

  def place_piece(x, y)
    off_grid_msg = "#{x} , #{y} is an invalid cell. Please try again"
    return off_grid_msg if @board.on_grid?(x, y) == false
    @board.grid[x][y] = 'x'
    @board.grid
  end
end
