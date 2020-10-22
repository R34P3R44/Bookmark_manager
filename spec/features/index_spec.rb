feature 'index' do
  scenario 'it says "Bookmark Manager" at the top' do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end

  scenario 'page has a form' do
    visit "/"
    find_field("add-bookmark").visible?
  end

  scenario 'user can submit a bookmark' do
    visit('/')
    fill_in 'add-bookmark', with: 'http://www.makersacademy.com'
    click_button('Submit')
    expect(page).to have_content('Thank you for adding a bookmark.')
  end
end
