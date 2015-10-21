# player makes a choice from p/s/r  then computer makes a choice from p/s/r 
# the choices are compared
# winner is declared

#set constants as hash

CHOICES = {'p' => "paper", 'r' => 'rock', 's' => "scissor"}

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wins against rock"
  when 'r'
    puts "Rock wins aginst scissors"
  when 's' 
    puts "Scissors wins against paper"
  end
end

loop do 
  
  begin
    puts "Hello and welcome to Paper, Scissor, Rock"
    puts "Please make your choice from Paper (p), Rock (r) or Scissor (s)"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  #computer makes choice
  computer_choice = CHOICES.keys.sample
  
  if player_choice == computer_choice
    puts "It's a tie"
  elsif 
    (player_choice == "p" && computer_choice == 'r') || (player_choice == "r" && computer_choice == "s") || (player_choice == "s" && computer_choice == "p")
    display_winning_message(player_choice)
    puts "You win!!"
  else
    display_winning_message(computer_choice)
    puts "Computer wins!!!"
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'

end

  puts "Good Bye, thanks for playing"