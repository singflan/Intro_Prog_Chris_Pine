puts "Write as many words as you want, one per line\n"
response_array = Array.new

loop do
  word = gets.chomp
  response_array.push(word)
  break if word == ""
end
puts response_array
puts "Sorted version:"
sorted_array = response_array.sort
puts sorted_array

