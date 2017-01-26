# 99 Bottles of Beer on the Wall
num_bottles = 99
word = "bottles"
while num_bottles > 0

  puts "#{num_bottles} #{word} of beer on the wall,\t#{num_bottles} #{word} of beer."
  
  num_bottles -= 1
  
  if num_bottles == 1
    word = "bottle"
  elsif num_bottles == 0
    word = "bottles"
  end
    
  puts "Take 1 down, pass it around,\t#{num_bottles} #{word} of beer on the wall."
end

