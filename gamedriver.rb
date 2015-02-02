require 'pry'
require_relative 'player'
require_relative 'rock-paper-scissors'

class Game
  
  def initialize
    
  #   puts "Hi! We are about to play Rock, Paper, Scissors. Would you like to see the rules?"
  #   response = gets.chomp
  #
  #   if response == "y" || response == "yes" || response == "yeah" || response == "okay" || response == "sure"
  #     puts "Here are the rules of the game:\n\n#{Game.rules}\n\n"
  #   end
  #     puts "Would you still like to play? Call my play method."
  #
  # end
  #
  # def rules
  #     puts "In Rock, Paper, Scissors, each player 'throws' a symbol at the same time, and one beats the other out. You can throw rock, paper, or scissors.\n\n"
  #     puts "Each symbol can only beat one other symbol:\n"
  #     puts "Rock beats scissors, because rock can smash scissors.\nScissors beats paper, because scissors cut through paper\nPaper beats rock, because paper can cover rock.\n\n"
  #     puts "You can play one round, or best-of any number of rounds. In a best of scenario, the game will prompt you until a player reaches the minimum number of points needed to win."
  # end
  #
  # def play
    
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

binding.pry