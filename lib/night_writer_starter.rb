require_relative 'night_writer_runner'
class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
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

puts ARGV.inspect #ARGV contains the command line arguments used to run ruby with the first value containing the name
#of the executable.
#inspect method calls to_s on an object, can be overridden by being defined
