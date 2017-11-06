class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(3) { Array.new(3, '-') }
  end

  def on_grid?(x, y)
    !!(@grid[x] && @grid[x][y])
  end
end
