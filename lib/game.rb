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

  def claim(x, y)
    off_grid_msg = "#{x}, #{y} is an invalid cell. Please try again."
    return off_grid_msg if @board.on_grid?(x, y) == false
    taken_msg = "#{x}, #{y} is already taken. Please select another cell"
    return taken_msg if @board.avaliable?(x, y) == false
    @board.grid[x][y] = @current_player.flag
    swap_turn
    @board.grid
  end

  def swap_turn
    @current_player = opponent(@current_player)
    @current_player
  end

  def opponent(current_player)
    if current_player.name == @players[0].name
      return @players[1]
    end
    @players[0]
  end
end
