gem 'minitest', '~> 5.9.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'braille_simulation.rb'

class BrailleSimulatorTest < Minitest::Test

  def test_if_it_prints_three_times
    braille_input = Braille.new("0.....", "a")
    assert_equal "0.....", braille_input.braille
    assert_equal "a", braille_input.letter
  end

end
