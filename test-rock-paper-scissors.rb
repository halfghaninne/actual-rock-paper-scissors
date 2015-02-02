# require 'pry'
require 'minitest/autorun'
require_relative 'gamedriver'
require_relative 'player'
require_relative 'rock-paper-scissors'

class RockPaperScissorsTest < Minitest::Test
  # REMEMBER Single Responsibility!
  
  def test_for_correct_player_input
    p = Player.new(2)
    assert_kind_of(String, name, msg = nil)
  end
  
  # def test_for_incorrect_no_of_rounds
  #   game = RockPaperScissors.new("Alex", "Sam", 3.5)
  #   assert_kind_of(Integer, number_of_rounds, msg = nil)
  # end
  
end

# class RockPaperScissorsTest < MiniTest::Test
#
#
# end 
