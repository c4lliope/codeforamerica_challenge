require_relative "lib/place"

data = File.read("./tracts.txt")
places = Place.parse_records(data)

population_low_to_high = places.sort_by(&:population_density)
housing_density_low_to_high = places.sort_by(&:housing_density)

puts "Lowest Population Density:"
puts population_low_to_high.first
puts
puts "Highest Population Density:"
puts population_low_to_high.last
puts
puts
puts "Lowest Housing Density:"
puts housing_density_low_to_high.first
puts
puts "Highest Housing Density:"
puts housing_density_low_to_high.last
