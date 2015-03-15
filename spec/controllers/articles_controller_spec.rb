require 'rails_helper'

describe ArticlesController do
  describe "#index" do
    before(:each) do
      get :index
    end
    it "responds with a 200" do
      expect(response.status).to eq(200)
    end
  end

end