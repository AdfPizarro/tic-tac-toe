#!/usr/bin/env ruby
require_relative '../lib/logic.rb'

continue = true

board = Board.new((1..9))
win = Win.new
players = Player.new

def game_run(board, win, players)
  game = true
  puts board.draw_board
  while game
    valid_value = false
    until valid_value
      puts players.switch_player
      valid_value = board.set_board(players.player, gets.chomp.to_i)
      puts 'invalid value' if valid_value == false
      puts board.draw_board
    end
    game = win.check_board(board)
  end
  win.score(players.player)
end

while continue
  puts 'Tic tac toe game'
  game_run(board, win, players)
  board.reset_board
  win.reset_game
  puts "player 1 has win #{win.player1}"
  puts "player 2 has win #{win.player2}"
  puts "Draws #{win.draw}"
  puts 'Do you want to continue Y/N'
  continue = gets.chomp.upcase == 'Y'
end

puts 'Thanks for playing'
