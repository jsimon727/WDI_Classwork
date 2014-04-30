def makechange(cents)
  coin_values  = [25, 10, 5, 1]

  num_coins = coin_values.map do |value|
    num_coin = cents/value
    cents = cents%value
    num_coin
  end
  return "#{num_coins[0]} quarters, #{num_coins[1]} dimes, #{num_coins[2]} nickles, and #{num_coins[3]} pennies."

end



# def make_change(amount)
#   if amount % 25 == 0
#     return "#{amount/25} quarters"
#   elsif amount % 10 == 0  
#     return "#{amount/10} dimes"
#   elsif amount % 5 == 0 
#     return "#{amount/5} nickles"
#   else
#     return "#{amount/1} pennies"
#   end
# end

# quarters = 25
# dimes = 10
# nickles = 5

# change = [25, 10, 5, 1]

# change.map do |change| 
#   mod = amount % change
#   if mod == 0 



# if amount - quarters(amount/quarters) > 0 



# quarter_change = amount - quarters(amount/quarters)
# # dimes_change = quarter_change - dimes


