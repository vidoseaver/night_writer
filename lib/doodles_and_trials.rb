require "pry"

array =  ["1","2","3","4"]

array2 = ["1", "2", "3", "4"]
array3 = []
array.each.with_index do |num, index|
	array3 << "#{num + array2[index]}"
end
p array3

string_of_stuff = "12121212121212121212121212212121212121221"


def chunk(string, size)
    string.scan(/.{1,#{size}}/)
end

chunk(string_of_stuff, 2)

array = ["1 2","2 3","3 4"]

def bubble_bag(product)
	@product_library = Hash.new
	product.each do |thing|
		thing_split = thing.split(" ")
		@product_library["#{thing_split[1]}"] = thing_split[0]
	end
end
bubble_bag(array)
p @array_library
