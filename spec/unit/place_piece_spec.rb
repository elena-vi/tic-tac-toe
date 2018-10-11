describe PlacePiece do
  it 'should place a piece' do
    gateway = spy

    place_piece = described_class.new(game_gateway: gateway)
    place_piece.execute({position: 5, piece: "X"})

    expect(gateway).to have_received(:save ) do | game |
      expect(game.to_a).to eq([[nil, nil, nil], [nil, "X", nil], [nil, nil, nil]])
    end
  end
end