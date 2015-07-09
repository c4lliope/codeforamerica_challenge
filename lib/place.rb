class Place
  def self.parse_records(data)
    rows = data.split("\n")
    rows.shift
    rows.map { |row| parse(row) }
  end

  def self.parse(line)
    data = line.split("\t")

    self.new(
      name: data[8],
      land_area: data[11].to_f,
      population: data[13].to_f,
      housing_units: data[14].to_f,
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

  def to_s
<<-STRING
#{name}
\tPopulation: #{population.to_i}
\tHousing Units: #{housing_units.to_i}
\tLand Area: #{land_area}
\tPopulation Density: #{population_density}
\tHousing Density: #{housing_density}
STRING
  end

  attr_reader :name, :land_area, :population, :housing_units
end
