#!/usr/bin/env ruby
require_relative "./logic.rb"

board = Board.new((1..9))
continue=true
valid_value=false

puts "Tic tac toe game"
board.draw_board()


while continue

  valid_value=false
  until valid_value do
    puts 'player 1: Choose the position for the X'
    valid_value=board.set_board(1, gets.chomp.to_i)
    board.draw_board()
  end

  valid_value=false
  until valid_value do
    puts 'player 2: Choose the position for O'
    valid_value=board.set_board(2, gets.chomp.to_i)
    board.draw_board()
  end

  puts "Do you want to continue Y/N"
  continue = gets.chomp == "Y" ? true : false

end

puts "Tanks for playing"
