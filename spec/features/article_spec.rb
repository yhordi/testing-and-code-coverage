describe 'Article', js: true do
  context 'a guest user' do
    describe 'on the index page' do
      it 'can see the title' do
        visit root_path
        expect(page).to have_content('Werlds Best Blogg.')
      end
      it 'can fill out a form and see an article created on the page' do
        visit root_path
        fill_in 'Title', with: 'Hey Phil'
        fill_in 'Body', with: 'Hackathon'
        click_on 'Create Article'
        expect(page).to have_content('Hey Phil')
      end
    end
  end
end