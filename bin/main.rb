#!/usr/bin/env ruby
require_relative './logic.rb'

continue = true

board = Board.new((1..9))
win = Win.new

def game_run(board, win)
  game = true
  player = 1
  symbol = 'X'
  puts board.draw_board
  while game
    valid_value = false
    until valid_value
      puts "player #{player}: Choose the position for the #{symbol}"
      valid_value = board.set_board(player, gets.chomp.to_i)
      puts 'invalid value' if valid_value == false
      puts board.draw_board
    end
    player = player == 1 ? 2 : 1
    symbol = player == 1 ? 'X' : '●'
    game = win.check_board(board)
  end
  win.score(player)
end

while continue
  puts 'Tic tac toe game'
  game_run(board, win)
  board.board = (1..9).to_a
  win.game_status = ''

  puts "player 1 has win #{win.player1}"
  puts "player 2 has win #{win.player2}"
  puts "Draws #{win.draw}"
  puts 'Do you want to continue Y/N'
  continue = gets.chomp.upcase == 'Y'
end

puts 'Thanks for playing'
