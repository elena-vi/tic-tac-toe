require 'draw_board'
require 'place_piece'
require 'game'

describe "tic tac toe" do
  class InMemoryGameGateway
    attr_reader :game

    def initialize
      @game = Game.new
    end

    def save(game)
      @game = game
    end
  end

  it 'should draw a board' do
    game_gateway = InMemoryGameGateway.new
    draw_board = DrawBoard.new(game_gateway: game_gateway)
    response = draw_board.execute({})
    expect(response).to eq({board: [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]})
  end

  it 'should place a piece' do
    game_gateway = InMemoryGameGateway.new

    draw_board = DrawBoard.new(game_gateway: game_gateway)
    place_piece = PlacePiece.new(game_gateway: game_gateway)
    place_piece.execute({position: 5, piece: "X"})
    response = draw_board.execute({})
    expect(response).to eq({board: [[nil, nil, nil], [nil, "X", nil], [nil, nil, nil]]})
  end
end