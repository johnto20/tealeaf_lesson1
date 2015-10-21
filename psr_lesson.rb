# all players pick either paper, rock or scissors
# compare: paper beats rock, rock beats scissors, scissor beat paper. or tie if same
# play again

CHOICES = {'p' => 'paper', 'r' => 'rock', 's' => 'scissors'}
puts "Welcome to paper, rock, scissors"

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps rock"
  when 'r'
    puts "Rock smashes scissors"
  when "s"
    puts "Scissors shred paper"
  end
end

loop do #overall game loop 
  #player makes a pick
  begin
    puts "pick one: (p, r, s)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  #computer makes a pick
  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie"
  elsif (player_choice == "p" && computer_choice == "r") || (player_choice == "r" && computer_choice == "s") || (player_choice == "s" && computer_choice == "p")
    display_winning_message(player_choice)
    puts "You won!"
  else
    display_winning_message(computer_choice)
    puts "Computer Won!"
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'

end

puts "Good bye!"
