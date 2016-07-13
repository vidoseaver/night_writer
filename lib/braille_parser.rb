require "./lib/library"
require "./lib/braille_converter"

class BrailleParser

  def initialize(input)
    @input = input
    @top_line    = []
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

  def joiner
    @top_line = @top_line.join
    @middle_line = @middle_line.join
    @bottom_line = @bottom_line.join
  end


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
