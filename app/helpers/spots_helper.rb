module SpotsHelper
def location_name (x,y)
  @res=Geokit::Geocoders::GoogleGeocoder.reverse_geocode "x,y"
  # @res= @res[1..50]
end
def location_coordinates
  @a = Geokit::Geocoders::GoogleGeocoder.geocode '140 Market St, San Francisco, CA'
  # @a.lat
  # @a.lng
  @a.ll
end

end
