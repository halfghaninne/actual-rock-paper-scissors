require 'pry'
require_relative 'player'
require_relative 'rock-paper-scissors'

class Game
  
  def initialize
    puts "What's the name of your first player?"
      @p1 = gets.chomp
      
    puts "Second player. What's your name?"
      @p2 = gets.chomp
      
    puts "How many rounds would you like to play?"
      @number_of_rounds = gets.chomp
      
    RockPaperScissors.new(@p1, @p2, @number_of_rounds)
    
  end

    
# This class could eventually be a holding place for a games center, but I think it's kind of unnecessary right now.
# Will be more necessary as the code progresses, becomes more sophisticated.

  # def initialize(*players)
  #   @player_scores = {}
  #   players.each {|name| @player_scores[name] = 0}

  
end
