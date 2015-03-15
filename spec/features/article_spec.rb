require 'rails_helper'

describe "Article", :js => true do
  let!(:article) { FactoryGirl.create :article }

  it "Shows a list of articles" do
    visit root_path
    expect(page).to have_content(article.title)
  end

  it "creates a new post" do
    visit root_path
    fill_in 'Title', with: article.title
    fill_in 'Body', with: article.body
    click_on('Create Article')
    expect(page).to have_content(article.body)
  end
end