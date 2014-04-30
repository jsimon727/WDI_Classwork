def clock_hands(hour, minute)
  hour %= 12
  angle = ((hour * 30 + minute / 2.0) - minute * 6).abs
  angle > 180 ? 360 - angle : angle
end



# def clockhands(time)
#   time.split(/:/)
#   hour_hand = time[0].to_i * 30
#   minute_hand = time[1].to_i * 6
#   hand_difference = (hour_hand - minute_hand).abs
#   if hand_difference  > 180
#     360 - hand_difference
#   else
#     return hand_difference
#   end
# end

puts clockhands("9:05")
puts clockhands("11:50")
puts clockhands("12:30")
puts clockhands("4:15")
puts clockhands("8:35")