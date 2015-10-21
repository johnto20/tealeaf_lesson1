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
  break if %w(1 2 3 4).include? operator
end

answer = case operator
  when '1' then num1.to_i + num2.to_i
  when '2' then num1.to_i - num2.to_i
  when '3' then num1.to_f / num2.to_f
  when '4' then num1.to_i * num2.to_i
  
end

say "Your answer is #{answer}"
