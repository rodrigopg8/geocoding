class ApplicationController < ActionController::Base
  force_ssl unless Rails.env.development? || Rails.env.test?
  protect_from_forgery with: :exception
end
