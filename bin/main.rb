#!/usr/bin/env ruby
class Board
  attr_accessor :board
  def initialize(arr)
    self.board = arr.to_a
  end

  def set_board(player, position)
    board[position - 1] = if player == 1
                            'X'
                          else
                            'O'
                          end
    puts "|#{board[6]}||#{board[7]}||#{board[8]}|"
    puts "|#{board[3]}||#{board[4]}||#{board[5]}|"
    puts "|#{board[0]}||#{board[1]}||#{board[2]}|"
  end
end

board = Board.new((1..9))

puts 'player 1: Choose the position for the X'

print board.set_board(1, gets.chomp.to_i)

puts 'player 2: Choose the position for O'

print board.set_board(2, gets.chomp.to_i)
