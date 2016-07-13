require "./lib/library"

class FromBraille







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
