class Braille
  attr_reader :braille, :letter

  def initialize (braille, letter)
    @braille = braille
    @letter = letter
  end

  def number
    if @braille == ".0.000 0....."
      "1"
    end
  end
  def capital
    if @braille == ".....0 0....."
      "A"
    end
  end
end

class Letter

  def initialize(braille, letter)
    @braille = braille
    @letter = letter
  end

  def to_letter
    "a"
  end
  end
