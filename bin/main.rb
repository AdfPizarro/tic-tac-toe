#!/usr/bin/env ruby
board = (1..9).to_a

continue = true
valid_value = false
game = true

puts 'Tic tac toe game'

while continue
  puts "|#{board[6]}||#{board[7]}||#{board[8]}|"
  puts "|#{board[3]}||#{board[4]}||#{board[5]}|"
  puts "|#{board[0]}||#{board[1]}||#{board[2]}|"
  player = 1
  while game
    until valid_value
      puts "player #{player}: Choose the position for the X"
      gets.chomp.to_i
      puts 'invalid value'
      puts "|#{board[6]}||#{board[7]}||#{board[8]}|"
      puts "|#{board[3]}||#{board[4]}||#{board[5]}|"
      puts "|#{board[0]}||#{board[1]}||#{board[2]}|"
      valid_value = true
    end
    player = player == 1 ? 2 : 1
    puts 'checking if the game ends'
    game = false
    continue = false
  end

  puts 'player 1 has win x times'
  puts 'player 2 has win x times'
  puts 'Draws x times'
  puts 'Do you want to continue Y/N'
  continue = gets.chomp.upcase == 'Y'
  game = true
end

puts 'Thanks for playing'
