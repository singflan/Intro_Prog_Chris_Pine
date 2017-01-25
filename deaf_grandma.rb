  bye_counter = 0
  while true
    puts "Say something to Grandma: "
    response = gets.chomp
    if response == response.upcase
      if response == "BYE"
        bye_counter += 1
        if bye_counter == 3
          break
        end
      else 
        bye_counter = 0
      end

      number = rand(21) + 30
      puts "NO, NOT SINCE 19#{number}!"
    else 
      puts "HUH?! SPEAK UP, SONNY!"
    end
  end


