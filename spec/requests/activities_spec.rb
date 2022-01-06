require 'rails_helper'

RSpec.describe "Activities", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/activities/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/activities/new"
      expect(response).to have_http_status(:success)
    end
  end

end
