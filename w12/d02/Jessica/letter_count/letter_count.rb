require 'pry'

##turns word into hash, with letters as keys
def letter_count(word)
  word_split = word.delete(" ").split("")
  ##finds the frequency of each letter in the word
  word_split.inject(Hash.new(0)) { |letter, frequency| letter[frequency] +=1; letter }
end

