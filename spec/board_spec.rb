require './lib/board'

describe Board do
  it 'return the draw board' do
    board = Board.new
    actual = board.draw_board
    expected = "|7|8|9|\n"
    expected += "|4|5|6|\n"
    expected += '|1|2|3|'
    expected
    expect(actual).to eq expected
  end

  it 'return a valid position' do
    board = Board.new
    actual = board.set_board(1, 9)
    expected = true
    expect(actual).to eq expected
  end

  it 'return win if there are is a winning combination' do
    board = Board.new
    board.set_board(1,7)
    board.set_board(2,8)
    board.set_board(1,9)
    board.set_board(2,4)
    board.set_board(1,5)
    board.set_board(2,6)
    board.set_board(1,1)
    board.set_board(2,2)
    board.set_board(1,3)
    board.check_board
    expected = 'win'
    expect(board.game_status).to eq expected
  end

  it 'return draw if there are is no winning combination' do
    board = Board.new
    board.set_board(1,1)
    board.set_board(2,2)
    board.set_board(1,3)
    board.set_board(1,4)
    board.set_board(2,5)
    board.set_board(1,6)
    board.set_board(2,7)
    board.set_board(1,8)
    board.set_board(2,9)
    board.check_board
    expected = 'draw'
    expect(board.game_status).to eq expected
  end

  it 'return the reset board' do
    board = Board.new
    expect(board.board).to eq (1..9).to_a
    expect(board.game_status).to eq ''
  end
end


