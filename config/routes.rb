Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get 'geocode', to: 'home#geocode'

  namespace :api, defaults: { format: :json } do
    get 'geocode', to: 'home#geocode'
  end
end
