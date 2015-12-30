require 'rails_helper'

describe ArticlesController do
  let(:new_blog) { FactoryGirl.build(:article) }
  let!(:blog) { FactoryGirl.create(:article) }
  describe '#index' do
    before(:each) do
      get :index
    end
    it 'responds with a status of 200' do
      expect(response.status).to eq(200)
    end
    it 'assigns the articles instance variable' do
      expect(assigns(:articles)).to be_an(ActiveRecord::Relation)
    end
    it 'assigns the article instance variable' do
      expect(assigns(:article)).to be_a_new(Article)
    end
  end
  describe '#create' do
    let(:params) {{"article"=>{"title"=>"hello", "body"=>"these are the paramz"}}}
    it 'increments articles in the database by 1' do
      expect{post :create, params}.to change{Article.count}.by(1)
    end
    it 'responds with a status of 302' do
      post :create, params
      expect(response.status).to eq(302)
    end
  end
  describe '#update' do
    let(:params) {{"article"=>{"title"=>blog.title, "body"=>":("}, "id"=>blog.id}}
    context 'on valid params' do
      it 'responds with a status of 302' do
        patch :update, params
        expect(response.status).to eq(302)
      end
      it 'updates an article in the database' do
        patch :update, params
        expect(blog.reload.body).to eq(":(")
      end
    end
    context 'on invalid params' do
      let(:params) {{"article"=>{"body"=>''}, "id"=>0000}}
      xit 'does not change an article in the database' do
      end
    end
  end
  describe '#destroy' do
    it 'responds with a status of 302' do
      delete :destroy, id: blog.id
      expect(response.status).to eq(302)
    end
    it 'decrements the articles in the database by 1' do
      expect{delete :destroy, id: blog.id}.to change{Article.count}.by(-1)
    end
  end
end