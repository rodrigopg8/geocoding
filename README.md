# README

The app takes an address, or a name of a place or town and returns its geograhic coordinates.

It has two ways of requesting this, but right now it's not using the api request, so it can make use of the rails templates, although I could have just one controller for it and make a regular AJAX request.

I'm using the Geocoder gem (https://github.com/alexreisner/geocoder) to make the requests.

Since this is just a simple demo, I didn't use any model to save searched places and so on.

If the user sends an invalid/empty query, the app shows a message to try again.


## Testing

### Rspec

`rspec # Runs all specs`
