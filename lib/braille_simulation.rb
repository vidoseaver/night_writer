class BrailleSim #build to put out a line of 80 characters

  def initialize(input)
    @top_line    = []
    @middle_line = []
    @bottom_line = []
    @input       = input
  end

  def split_string
    braille_string = string.scan(/.{6}/)
    braille_string.map do |num|
    @top_line    << num[0][0..1]
    @middle_line << num[0][2..3]
    @bottom_line << num[0][4..6]
   end
  end
end


string = BrailleSim.new("00..00")
puts string.split_string
