class Board
  attr_reader :board, :game_status
  COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [6, 4, 2], [8, 4, 0]].freeze

  def initialize(arr)
    @board = arr.to_a
    @game_status = ''
  end

  def set_board(player, position)
    if @board[position - 1].is_a?(Integer) && position.positive? && position < 10
      @board[position - 1] = player == 1 ? 'X' : '●'
      true
    else
      false
    end
  end

  def draw_board
    top = "|#{@board[6]}|#{@board[7]}|#{@board[8]}|\n"
    top += "|#{@board[3]}|#{@board[4]}|#{@board[5]}|\n"
    top += "|#{@board[0]}|#{@board[1]}|#{@board[2]}|"
    top
  end

  def check_board
    COMBINATIONS.each do |n|
      @game_status = 'win' if @board[n[0]] == @board[n[1]] && @board[n[1]] == @board[n[2]]
    end

    return false if @game_status == 'win'

    if @board.none? { |n| n.is_a?(Integer) }
      @game_status = 'draw'
      return false
    end
    true
  end

  def reset_board
    @board = (1..9).to_a
    @game_status = ''
  end
end
