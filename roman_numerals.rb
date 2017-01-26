


def make_roman(number)
  final_numeral = ""
  # Add the M(s)
  if (number / 1000) > 0 # Is the number over 1000? 
    letter = "M"
    veces = number / 1000
    veces.times do
      final_numeral += letter
    end
  end
  # Add the D
  if (number / 500) > 0 && (number/500) % 2 != 0 # if the number is greater than 500 and is not divided by 1000
    letter = "D"
    puts letter
    final_numeral += letter
  end
  # Add the C(s)
  if (number / 100) > 0
    if (number / 100) > 10
      if (number / 100) % 10 != 0 && (number/500)%10 != 5
        if (number/100) % 10 > 5
          veces = (number/100)%10-5
          puts veces
        else
          veces = (number/100)%10
          puts veces
        end
      end
    elsif (number/100) > 5
      veces = (number/100) - 5
    else
      veces = number / 100
    end

    letter = "C"
    veces.times do
      final_numeral += letter
    end
  end
  # Add the L


  # Add the X(s)

  # Add the V

  # Add the I(s)
  


  return final_numeral
end

puts "Enter a number: "
user_num = gets.chomp.to_i
puts make_roman(user_num)