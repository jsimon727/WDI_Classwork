##REFACTORED CODE
class Hand
  def initialize(cards)
    @cards = cards
  end

  def values
    @cards.map {|card| map_to_number(card[0])}.sort
  end

  def suits
    @cards.map {|card| card[1]}
  end

  def map_to_number(value)
    letter_key = {"A" => 1, "T" => 10, "J" => 11, "Q" => 12, "K" => 13}
    letter_key[value] || value.to_i
  end

  def straight?
    (values[0]..values[-1]).to_a == values
  end

  def flush?
    suits.uniq.length == 1
  end

  def full_house?
    values.uniq.length == 2 && values[1] != values[3]
  end

  def four_of_a_kind?
    values.uniq.length == 2 && values[1] == values[3]
  end

  def best_hand
    straight? && flush? ? "Straight Flush"
    : four_of_a_kind? ? "Four of a Kind"
    : full_house? ? "Full House"
    : flush? ? "Flush"
    : straight? ? "Straight"
    : "Not much"
  end

end


##UNREFACTORED CODE
# require 'pry'

# class Hand
#   def initialize(cards)
#     @cards = cards
#     @card_values ={"A"=>1, "T"=>10, "J"=>11, "Q"=>12, "K"=>13}
#   end


#   def values
#     card_hand_values = []
#     @cards.each do |card| 
#     if @card_values[card]  
#       card_hand_values << @card_values[card[0]]
#     else
#       card_hand_values << card[0]
#     end
#     card_hand_values
#   end

#   def suits
#     card_suits = []
#     @cards.each do |card|
#       card_suits << card.split("")[1]
#     end
#     return card_suits
#   end

#   def straight?
#     binding.pry
#     ordered_values = values.sort
#     is_straight = true
#     ordered_values.each_with_index do |value, index| 
#       if index > 0
#         if value != (ordered_values[index - 1] + 1)
#           is_straight = false
#         end
#       end
#     end
#     is_straight
#   end

#   def flush?
#     is_flush = true
#     suits.each_with_index do |suit, index| 
#       if index > 0
#         if suit != (suits[index - 1])
#           is_flush = false
#         end
#       end
#     end
#     is_flush
#   end

#   def full_house?
#     ordered_values = values.sort
#     if values.count(ordered_values[0]) == 2
#       if values.count(ordered_values[-1]) == 3
#         true
#       end
#     elsif values.count(ordered_values[-1]) == 2
#       if values.count(ordered_values[0]) == 3
#         true
#       end
#     else
#       false
#     end


#   end

#   def four_of_a_kind?
#     ordered_values = @cards.values.sort
#     if ordered_values[0] == ordered_values[1] && ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3]
#       true
#     elsif ordered_values[1] == ordered_values[2] && ordered_values[2] == ordered_values[3] && ordered_values[3] == ordered_values[4]
#       true
#     else
#       false
#     end
#   end

#   def best_hand
#     ordered_values = @cards.values.sort
#     is_straight = true
#     ordered_values.each_with_index do |value, index| 
#       if index > 0
#         if value != (ordered_values[index - 1] + 1)
#           is_straight = false
#         end
#       end
#     end
#     is_flush = true
#     suits.each_with_index do |suit, index| 
#       if index > 0
#         if suit != (suits[index - 1])
#           is_flush = false
#         end
#       end
#     end


#     if is_straight && is_flush
#       "Straight Flush"
#     elsif four_of_a_kind?
#       "Four of a Kind"
#     elsif full_house?
#       "Full House"
#     elsif flush?
#       "Flush"
#     elsif straight?
#       "Straight"
#     else
#       "Not much"
#     end
#   end

# end


