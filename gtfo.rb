require 'pry'
require 'open-uri'
require 'json'


file = open("https://data.cityofnewyork.us/resource/hyij-8hr7.json?precinct=#{precinct}&occurrence_year=2015")
data = file.read
ruby_data = JSON.parse(data)

# ruby_data.each do |crime|
#   p crime["occurrence_year"].to_i
# end


# morning
ruby_data.each do |crime|
  if crime["occurrence_hour"].to_i >= 6 && crime["occurrence_hour"].to_i < 12
    morning << crime
  end
end

# afternoon
ruby_data.select do |crime|
  if crime["occurrence_hour"].to_i >= 12 && crime["occurrence_hour"].to_i < 20
    afternoon << crime
  end
end

# night
ruby_data.each do |crime|
  if crime["occurrence_hour"].to_i >= 20 || crime["occurrence_hour"].to_i < 6
    night << crime
  end
end


# morning.group_by do |crime|

# ruby_data.group_by{|crime|crime[`]}

p ruby_data

# morning 6-12
# afternoon 12-20
# night 21-6

