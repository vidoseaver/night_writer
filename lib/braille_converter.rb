require "./lib/library"

class FromStringToBraille


  def initialize(input)
    @input = input
    @braille_letters = []
  end

#the real deal has working function for uppercase, lower case and spaces
  def converter
        @braille_letters = @input.chars.map.with_index do |letter, index|
          library_input = Library.new(letter)

          case
          when letter == " "
            "#{library_input.return_braille_space}"
          when letter.upcase == letter
            library_input = Library.new(letter.downcase)
            ".....0 #{library_input.return_braille_lowercase}"
          when library_input.return_braille_lowercase?
            "#{library_input.return_braille_lowercase}"
          end
        end
      end
      #takse an array of braille letter and breaks the caps into singles
      def caps_killer
        @braille_letters = @input.map do |letter|
          if letter.length > 6
            letter.split(" ")
          else
            letter
          end
        end
        @braille_letters.flatten
      end
      
end

string = "Here is a string"

trial_of_converter = FromStringToBraille.new(string)

p trial_of_converter.converter

trial_caps_killer = FromStringToBraille.new(trial_of_converter.converter)

p trial_caps_killer.caps_killer
