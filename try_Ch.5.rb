
# Greeting
puts "What is your first name? "
first = gets.chomp
puts "What is your middle name? "
middle = gets.chomp
puts "What is your last name? "
last = gets.chomp

full = "#{first} #{middle} #{last}"

puts "Hi #{full}!"

# Bigger, better favorite number
puts "What is your favorite number? "
number_s = gets.chomp
number = number_s.to_i
number += 1
puts "Do you want to change it to #{number}?"

