class View
  def welcome
    system "clear"
    puts "==".center(80, "=")
    puts "  Welcome to GTFO!  ".center(80, "*")
    puts "      What would you like to do today?      ".center(80, "*")
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
    puts
    puts "==".center(80, "=")
  end

  def report(felonies_count)
    system "clear"
    puts "==".center(80, "=")
    puts "  Your Precinct report:  ".center(80, "=")
    puts "==".center(80, "=")
    puts
    puts "          Your neighborhood had #{felonies_count} serious felonies at that time of day."

      if felonies_count > 200 #MAGIC NUMBER
        puts "          You should GTFO!"
      else
        puts "          Your neighborhood is 'relatively' safe!"
      end
    puts
    puts "==".center(80, "=")
  end

end
