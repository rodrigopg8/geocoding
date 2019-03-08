require 'rails_helper'

describe HomeController, type: :controller do
  describe '#index' do
    it 'renders sucessfuly' do
      get :index
      expect(response).to be_success
    end
  end

  describe '#geocode' do
    it 'returns a successful response' do
      get :geocode, xhr: true, params: { address: 'Berlin' }
      expect(response.status).to eq 200
    end
  end
end
