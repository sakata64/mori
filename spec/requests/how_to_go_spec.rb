require 'rails_helper'

RSpec.describe "HowToGos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/how_to_go/index"
      expect(response).to have_http_status(:success)
    end
  end

end
