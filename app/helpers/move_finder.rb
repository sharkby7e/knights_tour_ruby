class MoveFinder
  POSSIBLE_MOVES = [[1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1], [-1, 2]].freeze

  attr_accessor :x, :y

  def initialize(square:)
    @x = square.x
    @y = square.y
  end

  def move(move)
  end
end
