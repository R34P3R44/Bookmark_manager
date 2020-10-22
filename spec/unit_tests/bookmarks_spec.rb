require 'model/bookmarks.rb'

describe Bookmarks do
  it "retrieves all records from bookmarks table" do
    
    connect_to_test_database
    creating_bookmarks

    bookmarks = Bookmarks.print_all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
  end

  it "saves the bookmark to table" do

    connect_to_test_database
    
    Bookmarks.create(url: 'http://www.facebook.com')

    expect(Bookmarks.print_all).to include('http://www.facebook.com')
  end
end


