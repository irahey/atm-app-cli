
  def ask
    puts "Good day! This ATM can handle withdrawals only."
    puts "How much do you want to withdraw?"
    puts "This machine can withdraw in multiples of $5."
    print "> "
    amount = $stdin.gets.to_i
    withdraw(amount)
  end
  def withdraw(amount)
    if amount <= 0 # this deals with some of the situations...
      print "Please enter a different amount."
      ask
    elsif amount % 5 == 0
      my_array = []
      if amount % 20 == 0
        twenties = amount / 20
        twenties.times {my_array << 20}
        puts my_array
        askmore
      elsif amount % 10 == 0
        minusten = amount - 10
        twenties = amount / 20
        twenties.times {my_array << 20}
        my_array << 10
        puts my_array
        askmore
      else
        minusfive = amount - 5
        if minusfive % 20 == 0
          twenties = minusfive / 20
          twenties.times {my_array << 20}
          my_array << 5
          puts my_array
          askmore
        else
          minusfiveten = minusfive - 10
          twenties = minusfiveten / 20
          twenties.times {my_array << 20}
          my_array << 10
          my_array << 5
          puts my_array
          askmore
        end
      end
    else
      print "Please enter a different amount."
      ask
    end
    # ToDo: figure out this bit
  end



  def askmore
    puts "\nDo you want to do another withdrawal transaction? Y/N."
    print "> "
    answer = $stdin.gets.chomp.upcase
    if answer == 'Y'
      ask
    else
      leave
    end
  end

  def leave
    puts "Thank you for using this machine!"
    exit(0)
  end
  ask

