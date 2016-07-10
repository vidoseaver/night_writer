gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/flashcard.rb'

class CardTest < MiniTest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
  eend

end
