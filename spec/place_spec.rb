require "spec_helper"
require "place"

RSpec.describe Place do
  describe ".parse" do
    it "parses a tab-separated line of data" do
      data = "080	00	06	00562	001	427100			Census Tract 4271	37.764728	-122.230790	982120	192938	3497	1450"

      place = Place.parse(data)

      expect(place.name).to eq("Census Tract 4271")
      expect(place.land_area).to eq(982120)
      expect(place.population).to eq(3497)
      expect(place.housing_units).to eq(1450)
    end
  end

  describe ".parse_records" do
    it "parses many records" do
      data = File.read("./spec/fixtures/sample_data.txt")
      places = Place.parse_records(data)

      expect(places.count).to eq(2)
      expect(places.first.housing_units).to eq(1450)
      expect(places.last.housing_units).to eq(1725)
    end
  end

  describe "#population_density" do
    it "divides population by land area" do
      place = Place.new(population: 20, land_area: 10)

      expect(place.population_density).to eq(2)
    end
  end

  describe "#housing_density" do
    it "divides housing units by land area" do
      place = Place.new(housing_units: 20, land_area: 10)

      expect(place.housing_density).to eq(2)
    end
  end
end
