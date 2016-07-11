gem 'minitest', '~> 5.9.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'BrailleTranslator.rb'

class BrailleTranslatorTest < Minitest::Test

  def test_if_it_outputs_a_letter
    braille_letter = BrailleTranslator.new("a", "0.....")
    assert_equal "a", @braille.letter
    assert_equal "0.....", braille_letter.braille
  end

end
