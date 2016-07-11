require 'pry'
braille = File.readlines('braille_new.txt')

# class BrailleTranslator #This class will be fed braille and output a letter


#   def initialize (letter, braille)
#     @letter = letter
#     @braille = braille
#   end
#
# end

def chunk(string, size) #cuts braille file into sections of 2 and puts into lines
    string.scan(/.{1,#{size}}/)
end

first_line =  chunk(braille[0],2)
second_line = chunk(braille[1],2)
third_line = chunk(braille[2],2)
fourth_line = chunk(braille[3],2)
fifth_line = chunk(braille[4],2)
sixth_line = chunk(braille[5],2)
seventh_line = chunk(braille[6],2)
eighth_line = chunk(braille[7], 2)
ninth_line = chunk(braille[8], 2)
 #.length on readlines % 3 == 0. .times of .length of input to make arrays?

 def combine_lines ("one", "two", "three ")

 # array_of_three = []
 # first_line.each_with_index.map do |num, index|
 #     "#{num + second_line[index] + array_of_three[index]}"
 end

 end
