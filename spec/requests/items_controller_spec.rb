require 'rails_helper'

RSpec.describe "ItemsControllers", type: :request do
  describe "GET /index" do

    it "returns a successful response" do
      get '/items'
      expect(response).to be_successful
    end
  end
end
