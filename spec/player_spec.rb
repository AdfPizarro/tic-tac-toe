require './lib/player'
require './lib/board'

describe Player do
  it 'switch player 1' do
    player = Player.new
    player.switch_player
    expect(player.player).to eq 1
    expect(player.symbol).to eq 'X'
  end

  it 'switch the player 2' do
    player = Player.new
    player.switch_player
    player.switch_player
    expect(player.player).to eq 2
    expect(player.symbol).to eq '●'
  end

  it 'player makes a valid move' do
    player = Player.new
    board = Board.new
    expect(player.move(1, board)).to eq true
  end

  it 'player makes a invalid move' do
    player = Player.new
    board = Board.new
    expect(player.move(10, board)).to eq false
  end
end
