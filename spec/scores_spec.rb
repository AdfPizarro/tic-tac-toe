require './lib/scores'

describe Scores do
  it 'sums draw plus 1' do
    score = Scores.new
    score.score(1, 'win')
    expect(score.player1).to eq 1
  end

  it 'sums draw plus 1' do
    score = Scores.new
    score.score(2, 'win')
    expect(score.player2).to eq 1
  end

  it 'sums draw plus 1' do
    score = Scores.new
    score.score(1, '')
    expect(score.draw).to eq 1
  end
end
