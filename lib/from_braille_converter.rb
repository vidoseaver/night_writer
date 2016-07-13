require "./lib/library"

class FromBraille < Library
  attr_reader :letters_to_braille,
              :numbers_to_braille,
              :symbols_to_braille,
              :braille_to_letters,
              :braille_to_numbers,
              :braille_to_symbols,
              :input


  def scanner(library_to_search)
    library_to_search.each do |key, value|
      if @input == key
         @characters_in_order << value
      end
    end
    @characters_in_order.last
  end

  def return_symbol
    scanner(@braille_to_symbols)
  end

  def return_number
    scanner(@braille_to_numbers)
  end

  def return_letter
    scanner(@braille_to_letters)
  end

  def return_space
    scanner(@braille_to_symbols)
  end

end
