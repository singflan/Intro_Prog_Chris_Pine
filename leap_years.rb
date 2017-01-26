puts "Please provide a start year: "
start_year = gets.chomp.to_i
puts "Please provide an end year: "
end_year = gets.chomp.to_i
puts "The following years are leap years:"

leap_year = false
while start_year <= end_year
  if start_year % 4 == 0
    if start_year % 100 == 0
      if start_year % 400 == 0
        leap_year = true
      else
        leap_year = false
      end
    else
      leap_year = true
    end
  else
    leap_year = false
  end
  if leap_year == true
    puts start_year
  end
  start_year += 1
end



