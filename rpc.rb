CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors' }
puts "Welcome to rock, paper, scissors!"

def display_message(winning_message)
  case winning_message
  when 'p'
    puts "Paper covers rock!"
  when 's'
    puts "Scissors cuts paper!"
  when 'r'
    puts "Rock smashes scissors!"
  end
end

loop do
  begin
    puts "Pick: (r, p, s):"
    player_input = gets.chomp.downcase
  
  end until CHOICES.keys.include?(player_input)
  
  
  computer_choice = CHOICES.keys.sample
  if player_input == computer_choice
    puts "Its a tie"
  elsif 
    player_input == 'p' && computer_choice == 'r' || player_input == 'r' && computer_choice == 's' || player_input == 's' && computer_choice == 'p'
    display_message(player_input)
    puts "You won"
  else
    display_message(computer_choice)
    puts "You lose"
  end
  
  puts "Play again: (y or n?)"
  break if gets.chomp.downcase != 'y'
  
end

