require 'pry'

class Player
   
  attr_accessor :name #should this be a different kind of attr?
  
  def initialize(name)
    @name = name
    @score = 0
    
    puts @score #Move or delete this later.
  end
  
  def name
    puts @name
  end
  
  def score
    @score += 1
  end
  
  def status
    @score
  end
  
end

