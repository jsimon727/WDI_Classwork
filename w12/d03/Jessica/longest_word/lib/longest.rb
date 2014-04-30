def longest_word(sentence)
  split_sentence = sentence.scan(/\w+/).sort_by {|word| word.length}
  return split_sentence.last
end
