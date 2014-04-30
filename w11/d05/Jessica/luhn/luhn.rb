### REFACTORED CODE ###
def verify(card_number)
  digits = digits.to_s.split("")
  doubled_digits = digits.reverse.map.with_index do |num, index|
    index.even? ? num.to_i : 2 * num.to_i
  end

  addends = doubled_digits.join("").split("").map {|num| num.to_i}
  addends.reduce(:+) % 10 == 0 ?
end

### ATTEMPT 1 ####
# def doubled_digits(card_number)
#   card_number = card_number.split("").reverse!
#   n = 2
#   every_other_double = (n-1).step(card_number.length, n).map { |i| (card_number[i]).to_i * 2}
#   reversed_digits = every_other_double.reverse!
#   joined_digits = reversed_digits.join("")
#   split = joined_digits.split("")
#   split_array = split.map {|num| num.to_i}
#   split_array.reduce(:+)
# end

# def not_doubled_digits(card_number)
#   card_number = card_number.split("")
#   n = 2
#   every_other_digit = (n-1).step(card_number.length, n).map { |i| (card_number[i]).to_i}
#   every_other_digit.reduce(:+)
# end

# def sum(doubled_digits, not_doubled_digits, card_number)
#   sum = doubled_digits(card_number) + not_doubled_digits(card_number)
# end

# def check(card_number)
#  if sum(doubled_digits(card_number), not_doubled_digits(card_number), card_number) % 10 == 0
#     puts "valid"
#   else
#     puts "not valid"
#  end
# end

verify("4408041234567893")
verify("1234567891011121")




  