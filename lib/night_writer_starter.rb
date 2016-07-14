class FileReader
  def initialize
    @bottom_lines = []
    @middle_lines = []
    @top_lines = []
  def read
    filename = ARGV[0]
    @text_to_read = File.readlines(filename)
  end
    def readlines_sorter
      @text_to_read.map.with_index do |string, index|
        case
        when index%3 ==0
          @top_lines << string
        when index%2 == 0
          @middle_lines << string
        else
          @bottom_lines << string
        end
      end
    end
    def join_it
      readlines_sorter
      @top_lines.join
      @middle_lines.join
      @bottom_lines.join
    end
end

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end
end

puts ARGV.inspect
