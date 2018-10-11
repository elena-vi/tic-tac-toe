describe DrawBoard do
  it 'should draw a board' do
    draw_board = described_class.new(game_gateway: double(game: Game.new))
    response = draw_board.execute({})
    expect(response).to eq({board: [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]})
  end

  it 'should draw a board with a piece' do
    game = Game.new
    game.update_position({position: 1, piece: "x"})
    draw_board = described_class.new(game_gateway: double(game: game))
    response = draw_board.execute({})
    expect(response).to eq({board: [["x", nil, nil], [nil, nil, nil], [nil, nil, nil]]})
  end
end