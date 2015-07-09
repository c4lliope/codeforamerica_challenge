class Place < Struct.new(
    :summary_level,
    :geographic_component,
    :state_fips,
    :place_fips,
    :county_fips,
    :tract,
    :zip,
    :block,
    :name,
    :latitude,
    :longitude,
    :land_area,
    :water_area,
    :population,
    :housing_units,
)
  def self.parse(line)
    self.new(*line.split("\t"))
  end
end
