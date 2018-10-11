class Game
  def initialize
    @board = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
  end

  def update_position(position:, piece:)
    if position == 5
      @board[1][1] = piece
    else
      @board[0][0] = piece
    end
  end

  def to_a
    @board
  end
end


# needs to be updated to not be static