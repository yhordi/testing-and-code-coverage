require 'rails_helper'

describe "Article", :js => true do
  let!(:article) { FactoryGirl.create :article }

  it "Shows a list of articles" do
    visit root_path
    expect(page).to have_content(article.title)
  end
end