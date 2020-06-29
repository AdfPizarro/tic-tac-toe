class Scores
  attr_reader :draw, :player1, :player2

  def initialize
    @draw = 0
    @player1 = 0
    @player2 = 0
  end

  def score(player, game_status)
    if game_status == 'win'
      if player == 1 ? @player1 += 1 : @player2 += 1
      end
    else
      @draw += 1
    end
  end
end
