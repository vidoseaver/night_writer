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

string = BrailleSim.new("0..0..0..0.000..0.0.0.0.")
puts string.split_string

#chunk into 80, then print
