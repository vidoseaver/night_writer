require "./lib/library"

class ToBraille




  def scanner(library_to_search)
    library_to_search.each do |key, value|
      if @input == key
         @characters_in_order << value
      end
    end
    @characters_in_order.last
  end

  def return_braille_lowercase
    scanner(@letters_to_braille)
  end

  def return_braille_number
    scanner(@numbers_to_braille)
  end

  def return_braille_symbol
    scanner(@symbols_to_braille)
  end

  def return_braille_space
    scanner(@symbols_to_braille)
  end
end
