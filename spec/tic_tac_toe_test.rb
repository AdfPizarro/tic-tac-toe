require_relative '../bin/main.rb'
require_relative '../lib/board.rb'
require_relative '../lib/logic.rb'
require_relative '../lib/player.rb'
require_relative '../lib/scores.rb'

describe Tic_Tac_Toe do
    it "correctly winner in the line" do
        scores = Scores.new
        expect(scores.score(1, 2, 3, '0')).to eql('0')
    end
end



