class Controller
  attr_reader :felonies
  def initialize
    @input = nil
    @custom_start_time = nil
    @custom_end_time = nil
    @view = View.new
    until @input == "exit"
      run
    end
  end

  def run
    self.welcome
  end


  def lookup
    @input = nil
    @view.enter_precinct_id
    @precinct = gets.strip
    time_of_day
  end

  def time_of_day
    @view.select_time_of_day
    @time_of_day_input = gets.strip
    case @time_of_day_input
      when "1"
        calculate_felonies_by_time_of_day
        @felonies = @morning.count
      when "2"
        calculate_felonies_by_time_of_day
        @felonies = @afternoon.count
      when "3"
        calculate_felonies_by_time_of_day
        @felonies = @night.count
      when "4"
        @view.ask_start_time
        @custom_start_time = gets.strip.to_i
        @view.ask_end_time
        @custom_end_time = gets.strip.to_i

        calculate_felonies_by_custom
        @felonies = @custom_time_range.count

      else
        time_of_day
    end
    report
  end

  def calculate_felonies_by_time_of_day
    file = open("https://data.cityofnewyork.us/resource/hyij-8hr7.json?precinct=#{@precinct}&occurrence_year=2015")
    data = file.read
    ruby_data = JSON.parse(data)
    # morning
    ruby_data.each do |crime|
      if crime["occurrence_hour"].to_i >= 6 && crime["occurrence_hour"].to_i < 12
        @morning << crime
      end
    end
    # afternoon
    ruby_data.select do |crime|
      if crime["occurrence_hour"].to_i >= 12 && crime["occurrence_hour"].to_i < 20
        @afternoon << crime
      end
    end
    # night
    ruby_data.each do |crime|
      if crime["occurrence_hour"].to_i >= 20 || crime["occurrence_hour"].to_i < 6
        @night << crime
      end
    end
  end

  def calculate_felonies_by_custom
    file = open("https://data.cityofnewyork.us/resource/hyij-8hr7.json?precinct=#{@precinct}&occurrence_year=2015")
    data = file.read
    ruby_data = JSON.parse(data)
    # custom
    ruby_data.select do |crime|
      if crime["occurrence_hour"].to_i >= @custom_start_time && crime["occurrence_hour"].to_i < @custom_end_time
        @custom_time_range << crime
      end
    end
  end

  def report
    @view.report(@felonies)
    sleep(3)
    self.welcome
  end

  def welcome
    @precinct = nil
    @morning = []
    @afternoon = []
    @night = []
    @custom_time_range = []

    @view.welcome
    @input = gets.strip
      case @input
        when "1"
          self.lookup
        when "2"
          exit
      end
  end

end
