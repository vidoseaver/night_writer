require 'pry'
class Library
  attr_reader :alphabet_to_braille_library,
              :numbers_to_braille_library,
              :braille_to_alphabet_library,
              :braille_to_numbers_library



  def initialize (input)
    @alphabet_to_braille_library =  {"a"=>"0.....", "b"=>"0.0...", "c"=>"00....", "d"=>"00.0..", "e"=>"0..0..", "f"=>"000...", "g"=>"0000..", "h"=>"0.00..", "i"=>".00...", "j"=>".000..", "k"=>"0...0.", "l"=>"0.0.0.", "m"=>"00..0.", "n"=>"00.00.", "o"=>"0..00.", "p"=>"000.0.", "q"=>"00000.", "r"=>"0.000.", "s"=>".00.0.", "t"=>".0000.", "u"=>"0...00", "v"=>"0.0.00", "w"=>".000.0", "x"=>"00..00", "y"=>"00.000", "z"=>"0..000",}
    @braille_to_alphabet_library = {"0....."=>"a", "0.0..."=>"b", "00...."=>"c", "00.0.."=>"d", "0..0.."=>"e", "000..."=>"f", "0000.."=>"g", "0.00.."=>"h", ".00..."=>"i", ".000.."=>"j", "0...0."=>"k", "0.0.0."=>"l", "00..0."=>"m", "00.00."=>"n", "0..00."=>"o", "000.0."=>"p", "00000."=>"q", "0.000."=>"r", ".00.0."=>"s", ".0000."=>"t", "0...00"=>"u", "0.0.00"=>"v", ".000.0"=>"w", "00..00"=>"x", "00.000"=>"y", "0..000"=>"z", }
    @numbers_to_braille_library = {"1"=>"0.....", "2"=>"0.0...", "3"=>"00....", "4"=>"00.0..", "5"=>"0..0..", "6"=>"000...", "7"=>"0000..", "8"=>"0.00..", "9"=>".00...", "0"=>".000.."}
    @braille_to_numbers_library = {"0....."=>"1", "0.0..."=>"2", "00...."=>"3", "00.0.."=>"4", "0..0.."=>"5", "000..."=>"6", "0000.."=>"7", "0.00.."=>"8", ".00..."=>"9", ".000.."=>"0"}
    @braille_to_numbers_switchs = {"capital"=>".....0", ".....0"=>"capital", }
    @braille_to_symbols_library = {"......" => " ", "..000."=>"!", "....0."=>"'", "..0..."=>",", "....00"=>"-", "..00.0"=>".", "..0.00"=>"?"}
    @symbols_to_braille_library =  {" " =>"......", "!"=>"..000.", "'"=>"....01", ","=>"..0...", "-"=>"....00", "."=>"..00.0", "?"=>"..0.00"}
	  @shifters_library = {".....0"=>"capital", ".0.000"=>"number", "capital"=>".....0", "number"=>".0.000"}
    @input = input
    @characters_in_order = []
  end

  def scanner(thing_to_enumerate)
    thing_to_enumerate.each do |key, value|
      if @input == key
         @characters_in_order << value
      end
    end
    @characters_in_order.last
  end


  def return_braille_lowercase
    scanner(@alphabet_to_braille_library)
  end

  def return_braille_number
    scanner(@numbers_to_braille_library)
  end

  def return_braille_symbol
    scanner(@symbols_to_braille_library)
  end

  def return_symbol
    scanner(@braille_to_symbols_library)
  end

  def return_number
    scanner(@braille_to_numbers_library)
  end

  def return_letter
    scanner(@braille_to_alphabet_library)
  end

  def return_braille_space
    scanner(@symbols_to_braille_library)
  end

  def return_space
    scanner(@braille_to_symbols_library)
  end




end
