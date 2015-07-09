class Place
  def self.parse(line)
    data = line.split("\t")

    self.new(
      name: data[8],
      land_area: data[11],
      population: data[13],
      housing_units: data[14],
    )
  end

  def initialize(data)
    @name = data[:name] || 0
    @land_area = data[:land_area] || 0
    @population = data[:population] || 0
    @housing_units = data[:housing_units] || 0
  end

  def population_density
    population / land_area
  end

  def housing_density
    housing_units / land_area
  end

  attr_reader :name, :land_area, :population, :housing_units
end
