gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/library.rb'

class LibraryTest < MiniTest::Test

  def test_returns_a_braille_letter
    lib1 = Library.new("a")
    lib2 = Library.new("z")
    assert_equal "0.....", lib1.return_braille_lowercase
    assert_equal "0..000", lib2.return_braille_lowercase
  end
  def test_returns_a_braille_number#spaces included
    lib1 = Library.new("1")
    assert_equal "0.....", lib1.return_braille_number
    lib2 = Library.new("7")
    assert_equal "0000..", lib2.return_braille_number
  end
  def test_it_returns_a_braille_symbol#spaces included
    lib1 = Library.new(",")
    assert_equal "..0...", lib1.return_braille_symbol
    lib2 = Library.new("!")
    assert_equal "..000.", lib2.return_braille_symbol
  end

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
