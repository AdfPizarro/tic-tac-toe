#!/usr/bin/env ruby
class Board
    attr_accessor :board
    def initialize (arr)
        self.board = arr.to_a
    end

def set_board (player, position)
    if player == 1
        self.board[position-1] = "X"
    else
        self.board[position-1] = "O"
    end
    puts "|#{self.board[6]}||#{self.board[7]}||#{self.board[8]}|"
    puts "|#{self.board[3]}||#{self.board[4]}||#{self.board[5]}|"
    puts "|#{self.board[0]}||#{self.board[1]}||#{self.board[2]}|"

end

end

board = Board.new((1..9))



puts 'player 1: Choose the position for the X'

print board.set_board(1, gets.chomp.to_i)

puts 'player 2: Choose the position for O'

print board.set_board(2, gets.chomp.to_i)




