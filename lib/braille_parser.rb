require "./lib/library"
# require "./lib/braille_converter"

class BrailleParser
 attr_reader :top_line

  def initialize(input)
    @input = input
    @top_line    = []
    @middle_line = []
    @bottom_line = []
  end

  def chunker(string, size)
    string.scan(/.{1,#{size}}/)
  end

  def split_string
  	@input.each do |num|
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

  def chunker_applied
    @top_line = chunker(@top_line, 160)
    @middle_line = chunker(@middle_line, 160)
    @bottom_line = chunker(@bottom_line, 160)
  end

  def one_sixty_swiftly
    if @top_line[0].length < 160
	    p @top_line
	    p @middle_line
	    p @bottom_line
    else
    	final = []
    	@top_line = @top_line.zip(@middle_line, @bottom_line)
    	@top_line.flatten
      @top_line.each do |line|
        puts line
      end
    end
  end
  def parser
    split_string
    joiner
    chunker_applied
    one_sixty_swiftly
  end
end

short_test = BrailleParser.new([".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."])
short_test.parser
long_test = BrailleParser.new ([".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."".....0", "0.00..", "0..0..", "0.000.", "0..0..", "......", ".00...", ".00.0.", "......", "0.....", "......", ".00.0.", ".0000.", "0.000.", ".00...", "00.00.", "0000.."])
long_test.parser
