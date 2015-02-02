require 'pry'

# Class: Player
#
# Creates a new player; stores and updates their score. (So far, this information is impermanent, not being stored in another class for a feature like high scores or allowing players to play multiple kinds of games.)
#
# Attributes:
# @name       - String: Captures and assigns name to player.
# @score      - Integer: At instantiation, sets player's score to 0; updates and stores score after each win.
#
# Public Methods:
# + score       
# + status    

class Player
   
  attr_reader :name, :score
  
  def initialize(name)
    @name = name.to_s
    @score = 0
    
  end
  
  # Public: .add_point
  # Adds one point to the player's score; resets the value.
  # 
  # Parameters: 
  # + @score   - Integer: Resets score associated with player when method is called. 
  # 
  # Returns:
  # Integer: Updated score for player.
  #
  # State Changes:
  # Resets player's score by one point.
  
  def add_point
    @score += 1
  end
  
end

