questions = Array.new
questions = ["How do you feel?", "How is your day?", "How is your relationship with your mom?", "What are you thinking about?"]

def question()
  questions.each { |position| position.sample }
  response = gets.chomp
end

i = 0
while i < 6
  puts question()
  i+= 1
end
