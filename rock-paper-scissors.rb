require 'pry'
require_relative 'player'

# Class: RockPaperScissors
#
# Plays a friendly round or rounds of rock-paper-scissors between two players; keeps tally of their scores during the game.
#
# Attributes:
# + p1                - String: Captures and assigns name to player 1.
# + p2                - String: Captures and assigns name to player 2.
# + number_of_rounds  - Integer: Uses Integer to set a "best-of" conditional for multiple rounds.
#
# Public Methods:
# + initialize  

class RockPaperScissors
  
  attr_accessor :p1, :p2
  
  # Public: .new (initialize)
  # Starts a new game between two user-inputted players. Plays however many rounds the user desires.
  # 
  # Parameters: 
  # + p1                - String: Captures and assigns name to player 1.
  # + p2                - String: Captures and assigns name to player 2.
  # + number_of_rounds  - Integer: Uses Integer to set a "best-of" conditional for multiple rounds.
  #
  # Returns:
  # String: String stating who won the round.
  # String: String giving each player's score tally so far.
  #
  # State Changes:
  # Creates new Player objects at instantiation and resets each object's @score attribute after each round.
  
  def initialize(p1, p2, number_of_rounds)
    player_1 = Player.new(p1)
    player_2 = Player.new(p2)
    
    n = number_of_rounds.to_f
        
    # if Integer(number_of_rounds) == false
    #   puts "Oops! Please enter an integer for the number of rounds you'd like to play."
    # end
    
    if n % 2 == 0 
      winner = (n / 2) + 1
    elsif n % 2 != 0
      winner = (n / 2).ceil
    end
    
    puts "Okay! We will play best out of #{n}. In order to win, the player's score must be #{winner}."

    until player_1.score == winner || player_2.score == winner do
      
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
          player_2.add_point
        elsif move1 == "rock"
          puts "#{p1} wins!"
          player_1.add_point
        elsif move1 == "scissors" && move2 == "rock"
          puts "#{p2} wins!"
          player_2.add_point
        elsif move1 == "scissors"
          puts "#{p1} wins!"
          player_1.add_point
        elsif move1 == "paper" && move2 == "scissors"
          puts "#{p2} wins!"
          player_2.add_point
        elsif move1 == "paper"
          puts "#{p1} wins!"
          player_1.add_point
        end
      else
        puts "One or more of these moves are not part of this game!"
      end
    
      puts "So far: #{p1} - #{player_1.score}, #{p2} - #{player_2.score}."

    end
end


end

