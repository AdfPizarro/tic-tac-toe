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
