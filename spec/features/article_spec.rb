describe Article, js: true do
  context 'a guest user' do
    before(:each) do
      visit root_path
    end
    it 'can fill out a form to create a new article and see the article on the page' do
      fill_in 'Title', with: 'Hi Cicadas!'
      fill_in 'Body', with: "I don't have a million dollars. Sorry."
      click_on 'Create Article'
      expect(page).to have_content('Hi Cicadas!')
    end
    it 'can see the application title' do
      expect(page).to have_content('Werlds Best Blogg.')
    end
  end
end