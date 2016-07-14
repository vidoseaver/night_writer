require 'pry'
class Library
  attr_reader :letters_to_braille,
              :numbers_to_braille,
              :symbols_to_braille,
              :braille_to_letters,
              :braille_to_numbers,
              :braille_to_symbols,
              :input

  def initialize (input)
    @letters_to_braille           = {"a"=>"0.....", "b"=>"0.0...", "c"=>"00....", "d"=>"00.0..", "e"=>"0..0..", "f"=>"000...", "g"=>"0000..", "h"=>"0.00..", "i"=>".00...", "j"=>".000..", "k"=>"0...0.", "l"=>"0.0.0.", "m"=>"00..0.", "n"=>"00.00.", "o"=>"0..00.", "p"=>"000.0.", "q"=>"00000.", "r"=>"0.000.", "s"=>".00.0.", "t"=>".0000.", "u"=>"0...00", "v"=>"0.0.00", "w"=>".000.0", "x"=>"00..00", "y"=>"00.000", "z"=>"0..000"," " =>"......", "!"=>"..000.", "'"=>"....01", ","=>"..0...", "-"=>"....00", "."=>"..00.0", "?"=>"..0.00"}
    @numbers_to_braille           = {"1"=>"0.....", "2"=>"0.0...", "3"=>"00....", "4"=>"00.0..", "5"=>"0..0..", "6"=>"000...", "7"=>"0000..", "8"=>"0.00..", "9"=>".00...", "0"=>".000.."}
    @symbols_to_braille           = {" " =>"......", "!"=>"..000.", "'"=>"....01", ","=>"..0...", "-"=>"....00", "."=>"..00.0", "?"=>"..0.00"}
    @braille_to_letters           = {"0....."=>"a", "0.0..."=>"b", "00...."=>"c", "00.0.."=>"d", "0..0.."=>"e", "000..."=>"f", "0000.."=>"g", "0.00.."=>"h", ".00..."=>"i", ".000.."=>"j", "0...0."=>"k", "0.0.0."=>"l", "00..0."=>"m", "00.00."=>"n", "0..00."=>"o", "000.0."=>"p", "00000."=>"q", "0.000."=>"r", ".00.0."=>"s", ".0000."=>"t", "0...00"=>"u", "0.0.00"=>"v", ".000.0"=>"w", "00..00"=>"x", "00.000"=>"y", "0..000"=>"z","......" => " ", "..000."=>"!", "....0."=>"'", "..0..."=>",", "....00"=>"-", "..00.0"=>".", "..0.00"=>"?" }
    @braille_to_uppercase_letters = {"0....."=>"A", "0.0..."=>"B", "00...."=>"C", "00.0.."=>"D", "0..0.."=>"E", "000..."=>"F", "0000.."=>"G", "0.00.."=>"H", ".00..."=>"I", ".000.."=>"J", "0...0."=>"K", "0.0.0."=>"L", "00..0."=>"M", "00.00."=>"N", "0..00."=>"O", "000.0."=>"P", "00000."=>"Q", "0.000."=>"R", ".00.0."=>"S", ".0000."=>"t", "0...00"=>"U", "0.0.00"=>"V", ".000.0"=>"W", "00..00"=>"X", "00.000"=>"Y", "0..000"=>"z"}
    @braille_to_numbers           = {"0....."=>"1", "0.0..."=>"2", "00...."=>"3", "00.0.."=>"4", "0..0.."=>"5", "000..."=>"6", "0000.."=>"7", "0.00.."=>"8", ".00..."=>"9", ".000.."=>"0"}
    @braille_to_symbols           = {"......" => " ", "..000."=>"!", "....0."=>"'", "..0..."=>",", "....00"=>"-", "..00.0"=>".", "..0.00"=>"?"}
	  @shifters_library             = {".....0"=>:capital, ".0.000"=>:number, :capital=>".....0", :number=>".0.000"}
    @characters_in_order          = []
    @input                        = input
  end

  def scanner(library_to_search)
    library_to_search.each do |key, value|
      if @input == key
         @characters_in_order << value
      end
    end
    @characters_in_order.last
  end

  def scanner?(library_to_search)
    library_to_search.any? do |key, value|
      @input == key
    end
  end

  def return_symbol
    scanner(@braille_to_symbols)
  end
  def return_symbol?
    scanner?(@braille_to_symbols)
  end

  def return_number
    scanner(@braille_to_numbers)
  end
  def return_number?
    scanner?(@braille_to_numbers)
  end

  def return_uppercase_letter
    scanner(@braille_to_uppercase_letters)
  end

  def return_letter
    scanner(@braille_to_letters)
  end
  def return_letter?
    scanner?(@braille_to_letters)
  end
  def return_space
    scanner(@braille_to_symbols)
  end
  def return_space?
    scanner?(@braille_to_symbols)
  end

  def return_braille_lowercase
    scanner(@letters_to_braille)
  end
  def return_braille_lowercase?
    scanner?(@letters_to_braille)
  end
  def return_braille_number
    scanner(@numbers_to_braille)
  end
  def return_braille_number?
    scanner?(@numbers_to_braille)
  end

  def return_braille_symbol
    scanner(@symbols_to_braille)
  end
  def return_braille_symbol?
    scanner?(@symbols_to_braille)
  end

  def return_braille_space
    scanner(@symbols_to_braille)
  end

  def return_braille_space?
    scanner?(@symbols_to_braille)
  end

end
