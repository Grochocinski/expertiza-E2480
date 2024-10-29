require 'rails_helper'

RSpec.describe 'api/v1/bookmarks', type: :request do
  let(:user) { User.create(email: 'test@test.com', password: 'password') }
  let(:headers) { authenticated_header(user) }

  before do
    # Set the default host to localhost
    host! 'localhost'
  end
  
  describe 'GET /api/v1/bookmarks' do
    it 'returns an empty list when no bookmarks exist' do
      get '/api/v1/bookmarks', headers: headers
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)).to eq([])
    end
  end
end
