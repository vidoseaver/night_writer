require "./lib/library"

class ToBraille < Library
  attr_reader :letters_to_braille,
              :numbers_to_braille,
              :symbols_to_braille,
              :braille_to_letters,
              :braille_to_numbers,
              :braille_to_symbols,
              :input

  def initialize(input)
      @input = input
      @@characters_in_order = []
      @@letters_to_braille
      @@numbers_to_braille
      @@symbols_to_braille
  end


  def scanner(library_to_search)
    library_to_search.each do |key, value|
      if @input == key
         @@characters_in_order << value
      end
    end
    @@characters_in_order.last
  end

  def return_braille_lowercase
    scanner(@@letters_to_braille)
  end

  def return_braille_number
    scanner(@@numbers_to_braille)
  end

  def return_braille_symbol
    scanner(@@symbols_to_braille)
  end

  def return_braille_space
    scanner(@@symbols_to_braille)
  end
end
