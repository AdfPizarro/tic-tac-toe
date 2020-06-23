#!/usr/bin/env ruby
require_relative './logic.rb'

board = Board.new((1..9))
win = Win.new

continue = true
valid_value = false
game = true

puts 'Tic tac toe game'
board.draw_board
while continue
  player = 1
  while game
    valid_value = false
    until valid_value
      if player.odd?
        puts 'player 1: Choose the position for the X'
      else
        puts 'player 2: Choose the position for the X'
      end
      valid_value = board.set_board(player, gets.chomp.to_i)
      board.draw_board
    end
    player += 1
    game = win.check_board(board)
  end
  win.score (player)
  puts "player 1 has win #{win.player1}"
  puts "player 2 has win #{win.player2}"
  puts 'Do you want to continue Y/N'
  continue = gets.chomp == 'y'
  game = true
  board.board = (1..9).to_a
end

puts 'Thanks for playing'
