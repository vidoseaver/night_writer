gem 'minitest', '~> 5.9.0'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/braille_simulation'

class BrailleSimTest < Minitest::Test

  def test_it_outputs_a_string_of_braille
    string = BrailleSim.new("00..00")
    assert_equal [["00"],[".."],["00"]], string.split_string
  end
end
