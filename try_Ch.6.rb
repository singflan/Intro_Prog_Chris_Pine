
# Angry boss
puts "WHADDAYA WANT? "
response = gets.chomp
puts "WHADDAYA MEAN \"#{response.upcase}\"?!? YOU'RE FIRED!!"
puts ""
puts "--------------------------------------------"
puts " "


# Table of Contents
line_width = 60
puts( "Table of Contents".center(line_width))
puts" "
ch1 = "Chapter 1: Getting Started"
c1_p = "page 1"
ch2 = "Chapter 2: Numbers"
c2_p = "page 9"
ch3 = "Chapter 3: Letters"
c3_p = "page 13"
puts(ch1.ljust(line_width/2) + c1_p.rjust(line_width/2))
puts(ch2.ljust(line_width/2) + c2_p.rjust(line_width/2))
puts(ch3.ljust(line_width/2) + c3_p.rjust(line_width/2))

