class Player
  attr_reader :player, :symbol

  def initialize
    @player = 2
    @symbol = 'X'
  end

  def switch_player
    @player = player == 1 ? 2 : 1
    @symbol = player == 1 ? 'X' : '●'
  end

  def move(position, board)
    if board.set_board(@player, position)
      switch_player
      true
    else
      false
    end
  end
end
