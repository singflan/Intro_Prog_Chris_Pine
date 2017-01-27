


def make_roman(number)
  div_1000 = number / 1000
  div_100 = number / 100
  div_10 = number / 10
  final_numeral = ""
  # Add the M(s)
  if (div_1000) > 0 # Is the number over 1000? 
    letter = "M"
    veces = div_1000
    veces.times do
      final_numeral += letter
    end
  end
  # Add the D
  if (number / 500) > 0 && (number/500) % 2 != 0 # if the number is greater than 500 and is not divided by 1000
    letter = "D"
    final_numeral += letter
  end
  # Add the C(s)
  if div_100 >= 10
    if (div_100 % 10).between?(5, 10)  
      veces = div_100 % 10 - 5
    elsif (div_100 % 10).between?(0, 5)
      veces = div_100 % 10
      puts veces
      puts "it made it!"
    else
      veces = 0
    end
  elsif div_100.between?(0, 10)
    if div_100 > 5
      veces = div_100 - 5
    elsif div_100 < 5
      veces = div_100
    else
      veces = 0
    end
  end
  letter = "C"
  veces.times do
    final_numeral += letter  
  end
  # Add the L
  if (number/50) > 0 && (number/50) % 2 != 0
    letter = "L"
    final_numeral += letter
  end 
  # Add the X(s)
  if div_10 >= 100
    if (div_10 % 10).between?(5, 10)
      puts div_10 % 10
      veces = div_10 % 10 - 5
    elsif (div_10 % 10).between?(0, 5)
      puts div_10 % 10
      veces = div_10 % 10
    else
      veces = 0
    end
  elsif div_10.between?(10, 100)
    if (div_10 % 10).between?(5, 10)
      veces = div_10 % 10 - 5
    elsif (div_10 % 10).between?(0, 5)
      veces = div_10 % 10
    else
      veces = 0
    end
  elsif div_10.between?(0, 10)
    if div_10 > 5
      veces = div_10 - 5
    elsif div_10 < 5
      veces = div_10
    else
      veces = 0
    end
  end
  letter = "X"
  veces.times do
    final_numeral += letter
  end
  # Add the V
  if (number / 5) > 0 && (number/5) % 2 !=0
    letter = "V"
    final_numeral += letter
  end  
  # Add the I(s)
  if (number % 10).between?(5, 10) 
     puts number % 10
    veces = number % 10 - 5
  elsif (number % 10).between?(0, 5)
    puts number % 10
    veces = number % 10
  else
    veces = 0

    puts "veces is 0"
  end

  
  letter = "I"
  veces.times do
    final_numeral += letter
  end

  return final_numeral
end

puts "Enter a number: "
user_num = gets.chomp.to_i
puts make_roman(user_num)