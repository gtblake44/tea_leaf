puts "Hello, Welcome to the Blackjack table"
puts "What is your name?"

name = gets.chomp
puts "Good luck #{name}"

def calculate_total(cards) 
  # [['H', '3'], ['S', 'Q'], ... ]
  arr = cards.map{|e| e[1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0 # J, Q, K
      total += 10
    else
      total += value.to_i
    end
  end

  #correct for Aces
  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end

  total
end


suits = ['H','D','C','S']
cards = ['2','3','4','5','6','7','8','9','10','J','K','Q','A']

#code below is equivalent to deck=suits.product(cards)
#deck = []
#suits.each do |suit|
  #cards.each do |card|
    #deck == [suit,card]
  #end
#end

deck = suits.product(cards)
deck.shuffle!

#deal cards
mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

puts "My cards are: " + mycards.to_s
puts "Dealer cards: " + dealercards.to_s

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

#show cards and ask user what to do

puts "Dealer has #{dealercards[0]} and #{dealercards[1]} for a total of #{dealertotal}"
puts "My cards are #{mycards[0]} and #{mycards[1]} for a total of #{mytotal}"
puts " "
puts "Enter 1 to hit or 2 to stay"
hit_or_stay = gets.chomp

if mytotal == 21
  puts "Congratulations, you hit blackjack! You win!"
  exit
end

while mytotal < 21
  puts "What would you like to do? 1) hit 2) stay"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "Error: you must enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "You chose to stay."
    break
  end
  
  #hit
  new_card = deck.pop
  puts "Dealing card to player: #{new_card}"
  mycards << new_card
  mytotal = calculate_total(mycards)
  puts "Your total is now: #{mytotal}"

  if mytotal == 21
    puts "Congratulations #{name}, you hit blackjack! You win!"
    exit
  elsif mytotal > 21
    puts "Sorry #{name}, it looks like you busted!"
    exit
  end
end

# Dealer turn

if dealertotal == 21
  puts "Sorry #{name}, dealer hit blackjack. You lose."
  exit
end

while dealertotal < 17
  #hit
  new_card = deck.pop
  puts "Dealing new card for dealer: #{new_card}"
  dealercards << new_card
  dealertotal = calculate_total(dealercards)
  puts "Dealer total is now: #{dealertotal}"

  if dealertotal == 21
    puts "Sorry #{name}, dealer hit blackjack. You lose."
    exit
  elsif dealertotal > 21
    puts "Congratulations #{name}, dealer busted! You win!"
    exit
  end
end

# Compare hands

puts "Dealer's cards: "
dealercards.each do |card|
  puts "=> #{card}"
end
puts ""

puts "Your cards:"
mycards.each do |card|
  puts "=> #{card}"
end
puts ""

if dealertotal > mytotal
  puts "Sorry, #{name} dealer wins."
elsif dealertotal < mytotal
  puts "Congratulations #{name}, you win!"
else
  puts "It's a tie!"
end

exit











