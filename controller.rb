class Controller
  attr_reader :felonies
  def initialize
    @input = nil
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

  def report
    calculate_felonies_by_time_of_day
    case @time_of_day_input
      when "1"
        @felonies = @morning.count
      when "2"
        @felonies = @afternoon.count
      when "3"
        @felonies = @night.count
    end

    @view.report(@felonies)
    sleep(3)
    self.welcome
  end

  def welcome
    @precinct = nil
    @morning = []
    @afternoon = []
    @night = []

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
