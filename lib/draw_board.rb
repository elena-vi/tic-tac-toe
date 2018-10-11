class DrawBoard
  def initialize(game_gateway:)
    @game_gateway = game_gateway
  end

  def execute(*)
    game = @game_gateway.game

    {board: game.to_a}
  end
end

# doesn't use gateway, needs to get game via gateway