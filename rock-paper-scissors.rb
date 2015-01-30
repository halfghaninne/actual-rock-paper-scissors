require 'pry'
require_relative 'player'

class RPS
  
  attr_accessor :p1, :p2
  
  def initialize(p1, p2)
    player_1 = Player.new(p1)
    player_2 = Player.new(p2)
    

    puts "Your move, #{p1}:"
      move1 = gets.chomp.downcase

    puts "Go ahead #{p2}:"
      move2 = gets.chomp.downcase

    valid_moves = ["rock", "paper", "scissors"]

    if valid_moves.include?(move1) && valid_moves.include?(move2)
      if move1 == move2
        puts "Tie!"
      elsif move1 == "rock" && move2 == "paper"
        puts "#{p2} wins!"
        player_2.score
      elsif move1 == "rock"
        puts "#{p1} wins!"
        player_1.score
      elsif move1 == "scissors" && move2 == "rock"
        puts "#{p2} wins!"
        player_2.score
      elsif move1 == "scissors"
        puts "#{p1} wins!"
        player_1.score
      elsif move1 == "paper" && move2 == "scissors"
        puts "#{p2} wins!"
        player_2.score
      elsif move1 == "paper"
        puts "#{p1} wins!"
        player_1.score
      end
    else
      puts "One or more of these moves are not part of this game!"
    end

    
    puts "So far: #{p1} - #{player_1.status}, #{p2} - #{player_2.status}."

  end

end

binding.pry


# RETURN TO THIS AND MAKE THIS METHOD:
#
# def best_of(p1, p2, number_of_rounds)
#   n = number_of_rounds.to_f
#
#   winner = (n / 2.0).ceil
#
#   until @player_scores[p1] == winner || @player_scores[p2] == winner 
#     new_game(p1, p2, move1, move2)
#   end
#
# end