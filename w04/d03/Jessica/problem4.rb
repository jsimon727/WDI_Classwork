def is_palindrome?(number)
  return number.to_s == number.to_s.reverse
end

def has_2_3_digit_factors?(number)
  three_dig_nums = (100..999).to_a
  products = []
  three_dig_nums.each do |factor1|
    three_dig_nums each do |factor2| 
      product = factor1*factor2
      products << product
    end
  end
  return product.include?(number)
end

starting_number = 998001

while !is_palindrome(starting_number) && has_2_3_digit_factors(starting_number)
  starting_number -= 1
end


