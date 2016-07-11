gem 'minitest', '~> 5.9.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'braille.rb'

class BrailleTest < Minitest::Test

  def test_if_it_interprets_braille_and_letters
    braille_input = Braille.new("0.....", "a")
    assert_equal "0.....", braille_input.braille
    assert_equal "a", braille_input.letter
  end

  def test_it_interprets_numbers_and_braille
    braille_input = Braille.new(".0.000 0.....", "1")
    assert_equal ".0.000 0.....", braille_input.braille
    assert_equal "1", braille_input.number
  end

  def test_it_identifies_capital_letters
    braille_input = Braille.new(".....0 0.....", "A")
    assert_equal "A",braille_input.capital
  end

  def test_it_turns_letters_to_braille
    braille_letter = Letter.new("0.....", "a")
    braille_letter.to_letter
    assert_equal "a", braille_letter.to_letter
  end
end
