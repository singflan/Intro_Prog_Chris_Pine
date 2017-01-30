


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
  four_hundred = false
  nine_hundred = false
  if div_100 >= 10
    if (div_100 % 10) == 9
      nine_hundred = true
      veces = 1
    elsif (div_100 % 10).between?(5, 9)  
      veces = div_100 % 10 - 5
    elsif (div_100 % 10) == 4
      four_hundred = true
      veces = 1
    elsif (div_100 % 10).between?(0, 4)
      veces = div_100 % 10
    else
      veces = 0
    end
  elsif div_100.between?(0, 10)
    if div_100 == 9
      nine_hundred = true
      veces = 1
    elsif div_100.between?(5, 9)
      veces = div_100 - 5
    elsif div_100 == 4
      four_hundred = true
      veces = 1
    elsif div_100 < 4
      veces = div_100
    else
      veces = 0
    end
  end
  letter = "C"
  if nine_hundred == true
    final_numeral = final_numeral[0...-1]
  end
  veces.times do
    final_numeral += letter  
  end
  final_numeral += "D" if four_hundred
  final_numeral += "M" if nine_hundred

  # Add the L
  if (number/50) > 0 && (number/50) % 2 != 0
    letter = "L"
    final_numeral += letter
  end 
  # Add the X(s)
  forty = false
  ninety = false
  if div_10 >= 100
    if div_10 % 10 == 9
      ninety = true
      veces = 1
    elsif (div_10 % 10).between?(5, 9)
      veces = div_10 % 10 - 5
    elsif div_10 % 10 == 4
      forty = true
      veces = 1
    elsif (div_10 % 10).between?(0, 4)
      veces = div_10 % 10
    else
      veces = 0
    end
  elsif div_10.between?(10, 100)
    if (div_10 % 10) == 9
      ninety = true
      veces = 1
    elsif (div_10 % 10).between?(5, 9)
      veces = div_10 % 10 - 5
    elsif (div_10 % 10) == 4
      forty = true
      veces = 1
    elsif (div_10 % 10).between?(0, 4)
      veces = div_10 % 10
    else
      veces = 0
    end
  elsif div_10.between?(0, 10)
    if div_10 == 9
      ninety = true
      veces = 1
    elsif div_10.between?(5,9)
      veces = div_10 - 5
    elsif div_10 == 4
      forty = true
      veces = 1
    elsif div_10 < 4
      veces = div_10
    else
      veces = 0
    end
  end
  letter = "X"
  if ninety == true
    final_numeral = final_numeral[0...-1]
  end
  veces.times do
    final_numeral += letter
  end
  final_numeral += "L" if forty
  final_numeral += "C" if ninety
  # Add the V
  if (number / 5) > 0 && (number/5) % 2 !=0
    letter = "V"
    final_numeral += letter
  end  
  # Add the I(s)
  four = false
  nine = false
  if (number % 10) == 9
    nine = true
    veces = 1
  elsif (number % 10).between?(5, 9) 
    veces = number % 10 - 5
  elsif (number % 10) == 4
    four = true
    veces = 1
  elsif (number % 10).between?(0, 4)
    four_or_nine = false
    veces = number % 10
  else
    veces = 0
  end
  
  letter = "I"
  if nine == true
    final_numeral = final_numeral[0...-1]
  end
  veces.times do
    final_numeral += letter
  end
  final_numeral += "V" if four
  final_numeral += "X" if nine

  return final_numeral
end

puts "Enter a number: "
user_num = gets.chomp.to_i
puts make_roman(user_num)