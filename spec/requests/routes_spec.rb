require 'rails_helper'

RSpec.describe "Routes", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/routes/create"
      expect(response).to have_http_status(:success)
    end
  end

end
