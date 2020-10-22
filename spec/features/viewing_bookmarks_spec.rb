require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    
  connect_to_test_database
  creating_bookmarks

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end