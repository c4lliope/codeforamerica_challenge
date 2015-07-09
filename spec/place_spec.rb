require "spec_helper"
require "place"

RSpec.describe Place do
  describe ".parse" do
    it "parses a tab-separated line of data" do
      data = "080	00	06	00562	001	427100			Census Tract 4271	37.764728	-122.230790	982120	192938	3497	1450"

      place = Place.parse(data)

      expect(place.summary_level).to eq("080")
      expect(place.geographic_component).to eq("00")
      expect(place.state_fips).to eq("06")
      expect(place.place_fips).to eq("00562")
      expect(place.county_fips).to eq("001")
      expect(place.tract).to eq("427100")
      expect(place.zip).to eq("")
      expect(place.block).to eq("")
      expect(place.name).to eq("Census Tract 4271")
      expect(place.latitude).to eq("37.764728")
      expect(place.longitude).to eq("-122.230790")
      expect(place.land_area).to eq("982120")
      expect(place.water_area).to eq("192938")
      expect(place.population).to eq("3497")
      expect(place.housing_units).to eq("1450")
    end
  end
end
