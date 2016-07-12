gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/triple_replacement.rb'
require_relative '../lib/library.rb'

class TripleReplacementTest < MiniTest::Test

  def test_it_can_print_one_line
    print_try = TripleReplacement.new(1)

    assert_equal 1, print_try.print_one_line
  end

  def test_it_can_print_three_lines

    print_try = TripleReplacement.new("1")

    assert_equal "1""\n1""\n1", print_try.print_three_lines
  end

  def test_braille_splitter#unfinished
    skip
    print_try = TripleReplacement.new("......")

    assert_equal "..\n..\n.."
  end

  def test_breaks_it_into_three_arrays
    print_try = TripleReplacement("......")

    assert_equal asdf, print_try.breaker
  end




end
