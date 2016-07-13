gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/library.rb'
require './lib/from_braille'

class FromBrailleTest < MiniTest::Test

  def test_it_returns_a_symbol
    lib1 = Library.new("..0...")
    assert_equal ",", lib1.return_symbol
    lib2 = Library.new("..000.")
    assert_equal "!", lib2.return_symbol
  end

  def test_it_returns_letter
    lib1 = Library.new("0.....")
    assert_equal "a", lib1.return_letter
    lib2 = Library.new("0000..")
    assert_equal "g", lib2.return_letter
  end

  def test_it_returns_a_number
    lib1 = Library.new("0.....")
    assert_equal "1", lib1.return_number
    lib2 = Library.new("0000..")
    assert_equal "7", lib2.return_number
  end
end
