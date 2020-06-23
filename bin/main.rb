#!/usr/bin/env ruby
require_relative "./logic.rb"

board = Board.new((1..9))
win = Win.new

continue=true
valid_value=false
game=true



puts "Tic tac toe game"
board.draw_board()


while game

  valid_value=false
  until valid_value do
    puts 'player 1: Choose the position for the X'
    valid_value=board.set_board(1, gets.chomp.to_i)
    board.draw_board()
  end
  game=win.check_board(board)

  valid_value=false
  until valid_value do
    puts 'player 2: Choose the position for O'
    valid_value=board.set_board(2, gets.chomp.to_i)
    board.draw_board()
  end
  game=win.check_board(board)



end

puts "Do you want to continue Y/N"
continue = gets.chomp == "Y" ? true : false

puts "Tanks for playing"
