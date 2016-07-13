gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/library.rb'
require './lib/to_braille_converter'

class ToBrailleTest < MiniTest::Test

  def test_returns_a_braille_letter
    lib1 = ToBraille.new("a")
    lib2 = ToBraille.new("z")
    assert_equal "0.....", lib1.return_braille_lowercase
    assert_equal "0..000", lib2.return_braille_lowercase
  end

  def test_returns_a_braille_number
    lib1 = ToBraille.new("1")
    assert_equal "0.....", lib1.return_braille_number
    lib2 = ToBraille.new("7")
    assert_equal "0000..", lib2.return_braille_number
  end

  def test_it_returns_a_braille_symbol
    lib1 = ToBraille.new(",")
    assert_equal "..0...", lib1.return_braille_symbol
    lib2 = ToBraille.new("!")
    assert_equal "..000.", lib2.return_braille_symbol
  end

end
