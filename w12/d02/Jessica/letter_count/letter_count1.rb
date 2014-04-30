def letter_count(string)
  word_split = string.gsub(/[\W]/, "").split("")
  word_split.inject(Hash.new(0)) { |letter, frequency| letter[frequency] +=1; letter }
end