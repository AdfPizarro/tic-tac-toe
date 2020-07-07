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
  actual = board.set_board(1, 10)
  expected = true
  expect(actual).to eq expected
end






end


