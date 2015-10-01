describe ArticlesController do
  let(:artie) { FactoryGirl.create :article }
  describe 'GET #index' do
    before(:each) do
      get :index
    end
    it 'responds with a status of 200' do
      expect(response.status).to eq(200)
    end
    it 'assigns the @articles instance variable' do
      expect(assigns(:articles)).to be_a(ActiveRecord::Relation)
    end
    it 'assigns the @article instance variable' do
      expect(assigns(:article)).to be_a_new(Article)
    end
  end
  describe 'PUT #update' do

  end
end