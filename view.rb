class View
  def welcome
    system "clear"
    puts "==".center(80, "=")
    puts "  Welcome to GTFO!  ".center(80, "*")
    puts "      Let's see if your neighborhood is safe!      ".center(80, "*")
    puts "  Please enter a number from the following menu:  ".center(80, "=")
    puts "==".center(80, "=")
    puts
    puts "          1. Lookup crimes in my precinct                                         "
    # puts "          2. Lookup my precinct by zipcode                                 "
    puts "          2. Exit                                         "
    puts
    puts "==".center(80, "=")
  end

  def enter_precinct_id
    system "clear"
    puts "==".center(80, "=")
    puts "  Please enter your precinct ID  ".center(80, "=")
    puts "==".center(80, "=")
  end

  def select_time_of_day
    system "clear"
    puts "==".center(80, "=")
    puts "  Please enter a selction for time of day:  ".center(80, "=")
    puts "==".center(80, "=")
    puts
    puts "          1. Morning (6AM until Noon)                                         "
    puts "          2. Afternoon (Noon until 8PM)                                         "
    puts "          3. Night (8PM until 6AM)                                         "
    puts "          4. Custom time range (you will enter times on next screen)                                         "
    puts
    puts "==".center(80, "=")
  end

  def ask_start_time
    system "clear"
    puts "==".center(80, "=")
    puts "  Please enter a custom start time in 24-hour format  ".center(80, "=")
    puts "==".center(80, "=")
  end

  def ask_end_time
    system "clear"
    puts "==".center(80, "=")
    puts "  Please enter a custom end time in 24-hour format  ".center(80, "=")
    puts "==".center(80, "=")
  end

  def report(felonies_count)
    system "clear"
    puts "==".center(80, "=")
    puts "  Your Precinct report:  ".center(80, "=")
    puts "==".center(80, "=")
    puts
    puts "          Your neighborhood had #{felonies_count} serious felonies at that time of day."


      case felonies_count
        when 400..100000
          puts
          sleep(1.5)
          print "          You best"
          sleep(0.5)
          print "."
          sleep(0.5)
          print "."
          sleep(0.5)
          print "."
          sleep(0.5)
          puts
          puts
          puts "           .d8888b. 88888888888 8888888888 .d88888b.  ".red
          puts "          d88P  Y88b    888     888       d88P   Y88b ".red
          puts "          888    888    888     888       888     888 ".red
          puts "          888           888     8888888   888     888 ".yellow
          puts "          888  88888    888     888       888     888 ".green
          puts "          888    888    888     888       888     888 ".light_blue
          puts "          Y88b  d88P    888     888       Y88b. .d88P ".blue
          puts "           Y8888P88     888     888         Y88888P  ".pink

        when 350..399 then puts "          Pepper spray is your best friend..."
        when 300..349 then puts "          Your neighborhood is 'relatively' safe"
        when 225..299 then puts "          Go ahead do that Tai-Chi!"
        else
                          puts "          You're fine!"
      end



    puts
    puts "==".center(80, "=")
  end

end
