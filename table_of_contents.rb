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
book_array = [ch1, c1_p, ch2, c2_p, ch3, c3_p]
puts(book_array[0].ljust(line_width/2) + book_array[1].rjust(line_width/2))
puts(book_array[2].ljust(line_width/2) + book_array[3].rjust(line_width/2))
puts(book_array[4].ljust(line_width/2) + book_array[5].rjust(line_width/2))