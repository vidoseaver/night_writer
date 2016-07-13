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

#starter file
filename = 'message.txt'
file_read = "Here is a sentence."
puts "Created '#{filename}' containing #{file_read.length} characters."

#takes letters and translates to braille
letters = file_read.chars.map.with_index do |letter, index|
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

p letters
#breaks capitals for braille letter translator
letters = letters.map do |letter|
  if letter.length > 6
    letter.split(" ")
  else
    letter
  end
end
letters.flatten!
 p letters
      #braille to letter translator
  letters = letters.map.with_index do |letter, index|
    library_input = Library.new(letter)
    case
    when  letter == "......"
      "#{library_input.return_space}"
    when letter == ".....0"
      library_input = Library.new(letters[index+1])
      letters.delete_at(index+1)
      "#{library_input.return_uppercase_letter}"
    when library_input.return_letter?
       "#{library_input.return_letter}"
    when letter == ".0.000"
    else"#{library_input.return_number}"

    end
  end

  p letters
#   #this code will make it printable to file in braille format
  @top_line = []
  @middle_line = []
  @bottom_line = []

  def chunk(string, size)
      string.scan(/.{1,#{size}}/)
  end

  def split_string(braille)

  	braille.each do |num|
  	    @top_line    << num[0..1]
  	    @middle_line << num[2..3]
  	    @bottom_line << num[4..5]
  	end

  end
#
# #
# works with above class to limit lines to a number of chars
split_string(letters)
  @top_line = @top_line.join
  @middle_line = @middle_line.join
  @bottom_line = @bottom_line.join


  @top_line = chunk(@top_line, 160)
  @middle_line = chunk(@middle_line, 160)
  @bottom_line = chunk(@bottom_line, 160)
  if @top_line[0].length < 160
  	p @top_line.length
  	p @middle_line.length
  	p @bottom_line.length
  else
  	final = []
  	@top_line = @top_line.zip(@middle_line, @bottom_line)
  	@top_line.flatten
  end
