require 'rails_helper'

describe Api::HomeController, type: :controller do
  describe '#geocode' do
    it 'returns the two coordinates' do
      get 'geocode', params: { address: 'Berlin' }

      expect(response).to be_success

      coordinates = JSON.parse(response.body)
      expect(coordinates.count).to eq 2
    end

    it 'returns no coordinates when given an empty query' do
      get 'geocode', params: { address: '' }
      coordinates = JSON.parse(response.body)
      expect(coordinates.count).to eq 0
    end

    it 'returns no coordinates when given an invalid query' do
      get 'geocode', params: { address: 'fndkjsfnkf' }
      coordinates = JSON.parse(response.body)
      expect(coordinates.count).to eq 0
    end
  end
end
