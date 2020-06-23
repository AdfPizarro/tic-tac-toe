class Board
  attr_accessor :board
  def initialize(arr)
    self.board = arr.to_a
  end

  def set_board(player, position)
    if board[position-1].is_a?(Integer) && position > 0 && position <10
      board[position - 1] = player == 1 ? 'X' : '●'
      return true
    else
      puts "Invalid value"
      return false
    end
  end

  def draw_board
    puts "|#{board[6]}||#{board[7]}||#{board[8]}|"
    puts "|#{board[3]}||#{board[4]}||#{board[5]}|"
    puts "|#{board[0]}||#{board[1]}||#{board[2]}|"
  end
end
