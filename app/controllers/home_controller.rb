class HomeController < ApplicationController
  def index
  end

  # No need to specify the response format, since it will go automatically to the view with the same name, in this case
  # a JS file because the the request was set as remote
  def geocode
    # if the param is nil or empty, it just returns an empty array
    results = Geocoder.search(params[:address])
    coordinates = results.first&.coordinates

    @coordinates = coordinates.nil? ? {} : { latitude: coordinates[0], longitude: coordinates[1] }
  end
end
