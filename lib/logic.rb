class Board
  attr_reader :board
  def initialize(arr)
    @board = arr.to_a
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

  def reset_board
    @board = (1..9).to_a
  end
end

class Win
  attr_reader :draw, :game_status, :player1, :player2

  def initialize
    @combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [6, 4, 2], [8, 4, 0]]
    @draw = 0
    @game_status = ''
    @player1 = 0
    @player2 = 0
  end

  def check_board(board)
    @combinations.each do |n|
      @game_status = 'win' if board.board[n[0]] == board.board[n[1]] && board.board[n[1]] == board.board[n[2]]
    end

    return false if game_status == 'win'

    if board.board.none? { |n| n.is_a?(Integer) }
      @game_status = 'draw'
      return false
    end
    true
  end

  def reset_game
    @game_status = ''
  end

  def score(player)
    if @game_status == 'win'
      if player == 1 ? @player1 += 1 : @player2 += 1
      end
    else
      @draw += 1
    end
  end
end

class Player
  attr_reader :player, :symbol

  def initialize
    @player = 2
    @symbol = 'X'
  end

  def switch_player
    @player = player == 1 ? 2 : 1
    @symbol = player == 1 ? 'X' : '●'
    "player #{player}: Choose the position for the #{symbol}"
  end
end
