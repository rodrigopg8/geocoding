class HomeController < ApplicationController
  def index
  end

  def geocode
    # if the param is nil or empty, it just returns an empty array
    results = Geocoder.search(params[:address])
    coordinates = results.first&.coordinates

    @coordinates = coordinates.nil? ? {} : { latitude: coordinates[0], longitude: coordinates[1] }
  end
end
