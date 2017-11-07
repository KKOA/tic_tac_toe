class Board
  attr_reader :grid
  def initialize(grid = Array.new(3) { Array.new(3, '-') })
    @grid = grid
  end

  def on_grid?(x, y)
    !!(@grid[x] && @grid[x][y])
  end

  def avaliable?(x, y)
    @grid[x][y] == '-'
  end

  def full?
    @grid.all? do |row|
      row.none? do |col|
        col == '-'
      end
    end
  end
end
