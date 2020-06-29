#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/scores.rb'

continue = false

board = Board.new((1..9))
score = Scores.new
players = Player.new

def game_run(board, score, players)
  game = true

  puts board.draw_board
  while game
    valid_value = false
    until valid_value

      puts "player #{players.player}: Choose the position for the #{players.symbol}"
      valid_value = players.move(gets.chomp.to_i, board)
      puts 'invalid value' if valid_value == false
      puts board.draw_board
    end
    game = board.check_board
  end
  score.score(players.player, board.game_status)
end

while continue
  puts 'Tic tac toe game'
  board.reset_board
  game_run(board, score, players)

  puts "player 1 has win #{score.player1}"
  puts "player 2 has win #{score.player2}"
  puts "Draws #{score.draw}"

  puts 'Do you want to continue Y/N'
  continue = gets.chomp.upcase == 'Y'
end

puts 'Thanks for playing'
