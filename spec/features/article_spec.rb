require 'rails_helper'

describe "Article", :js => true do
  let!(:article) { FactoryGirl.create :article }

  it "Shows a list of articles" do
    visit root_path
    expect(page).to have_content(article.title)
  end
  context "Create Button" do
    it "creates a new post" do
        visit root_path
        fill_in 'Title', with: article.title
        fill_in 'Body', with: article.body
        click_on('Create Article')
        expect(page).to have_content(article.body)
    end
  end
  describe "article page" do
    before(:each) do
      visit article_path(article.id)
    end
    it "displays a form and updates an existing post" do
      new_title = "Howby Bowby"
      fill_in('Title', with: new_title)
      click_on('Update')
      expect(page).to have_content(new_title)
    end
    it "has a button that deletes the article" do
      click_on('Delete Article')
      expect(page).to_not have_content(article.title)
    end
  end
end