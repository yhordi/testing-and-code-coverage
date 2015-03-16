require 'rails_helper'

describe ArticlesController do
  describe "#index" do
    before(:each) do
      get :index
    end
    it "responds with a 200" do
      expect(response.status).to eq(200)
    end
    it "assigns the articles instance variable" do
      expect(assigns(:articles)).to be_a(ActiveRecord::Relation)
    end
    it "assigns the articles instance variable" do
      expect(assigns(:article)).to be_a(Article)
    end
  end

  describe '#create' do
    
  end

end