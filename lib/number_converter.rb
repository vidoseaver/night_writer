require "./lib/library"

class BrailleToLetters


  def initialize(input)
    @input = input
    @output = []
  end

  #p @input

  def break_capitals
    @output = @input.map do |letter|
      if letter.length > 6
        letter.scan(/.{1,#{6}}/)
      else
        letter
      end
    end
  end

  def squash
    @output.flatten!
  end

   #p @input

  def converter      #braille to letter translator
    @output  = @output.map.with_index do |letter, index|
      library_input = Library.new(letter)
      case
      when  library_input.return_symbol?
        "#{library_input.return_symbol}"
      when letter == ".....0"
        library_input = Library.new(@output[index+1])
        @output.delete_at(index+1)
        "#{library_input.return_uppercase_letter}"
      when library_input.return_letter?
         "#{library_input.return_letter}"
      when letter == ".0.000"
      else
        "#{library_input.return_number}"
      end
    end
  end
  def joiner
    @output.join
  end
  def the_godfather
    break_capitals
    squash
    converter
    joiner
  end

end

array = [".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000..", "..00.0"]
long_test = BrailleToLetters.new(array)

p long_test.the_godfather
