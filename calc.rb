def say(msg)
  puts "-----#{msg}-----"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "What operation do you want to use? 1 to add, 2 to subtract, 3 to multiply, and 4 to divide"
operation = gets.chomp

if operation == "1"
  result = num1.to_i + num2.to_i
elsif operation == "2"
  result = num1.to_i - num2.to_i
elsif operation == "3"
  result = num1.to_i * num2.to_i
elsif operation == "4" 
  result = num1.to_f / num2.to_f
end

if operation != "1,2,3,4"
  say "please select 1, 2, 3, or 4 to perform a calculation!"
end

say "What operation do you want to use? 1 to add, 2 to subtract, 3 to multiply, and 4 to divide"
operation = gets.chomp

if operation == "1"
  result = num1.to_i + num2.to_i
elsif operation == "2"
  result = num1.to_i - num2.to_i
elsif operation == "3"
  result = num1.to_i * num2.to_i
elsif operation == "4" 
  result = num1.to_f / num2.to_f
end

say "The result is #{result}"
