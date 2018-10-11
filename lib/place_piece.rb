class PlacePiece
  def initialize(game_gateway:)
    @game_gateway = game_gateway
  end

  def execute(*)
    game = Game.new
    game.update_position({position: 5, piece: "X"})
    @game_gateway.save(game)
  end
end