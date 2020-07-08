require './lib/player'

describe Player do
  it 'switch the player and symbol' do
    player = Player.new
    player.switch_player
    expect(player.player).to eq 1
    expect(player.symbol).to eq 'X'
  end

  it 'makes a move' do
    player = Player
end