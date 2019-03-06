class HomeController < ApplicationController
  def index
  end

  def geocode
    results = Geocoder.search(params[:address])
    coordinates = results.first.coordinates
    
    @coordinates = { latitude: coordinates[0], longitude: coordinates[1] }
  end
end
