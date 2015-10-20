def say(word)
  puts "==> #{word}"
end


say "Welcome to THE CALCULATOR, please enter a number"
num1 = gets.chomp

say "Thanks for that, please enter a second number"
num2 = gets.chomp

operator = 0

loop do
say  "What do you want to do to the numbers?: 1) ADD, 2) SUBTRACT, 3)DIVIDE, 4)MULTIPLY"
operator = gets.chomp
if operator.to_i < 5
  break
end
end

if operator == '1'
  answer = num1.to_i + num2.to_i
  say "Your answer is #{answer}"
elsif operator == '2'
  answer = num1.to_i - num2.to_i
  say "Your answer is #{answer}"
elsif operator == '3'
  answer = num1.to_f / num2.to_f
  say "Your answer is #{answer}"
  else
  answer = num1.to_i * num2.to_i
  say "Your answer is #{answer}"
end 

