require "./lib/library"
require "pry"



class BrailleSim

  def initialize(input)
   @top_line = []
   @middle_line = []
   @bottom_line = []
   @input = input
  end

  def split_string
    braille_string_array = @input.scan(/.{6}/)#splits into words
    braille_string_array.map do |num|
     @top_line << num[0][0..1]
     @middle_line << num[0][2..3]
     @bottom_line << num[0][4..6]
    end
  end
end
#     braille_string_six.each do |string|


filename = 'message.txt'
file_read = "Here is a a sentence."
puts "Created '#{filename}' containing #{file_read.length} characters."

letters = file_read.chars.map.with_index do |letter, index|
  letter_class = Library.new(letter)
  case
  when letter = " "
    "#{letter_class.return_braille_space}"
  when letter == letter.upcase
    letter_class = Library.new(letter.downcase)
    ".....0 #{letter_class.return_braille_lowercase}"
  when letter_class.input == letter.downcase
    "#{letter_class.return_braille_lowercase}"
  end
end

p letters
#
#   letters.map.with_index do |letter, index|
#     letter_class = Library.new(letter)
# binding.pry
#     case
#     when letter = "......"
#       "#{letter_class.return_space}"
#     when ".....0" == letter
#       letter_class = Library.new(letter[index + 1])
#       "#{letter_class.return_letter.upcase}"
#     when letter_class.input == letter.downcase
#       "#{letter_class.return_braille_lowercase}"
#     end
#   end
#
# p letters
