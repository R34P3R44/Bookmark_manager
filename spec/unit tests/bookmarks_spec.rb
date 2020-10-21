require 'model/bookmarks.rb'

describe Bookmarks do
  it "retrieves all records from bookmarks table" do
    #expect(subject.print_all).to include("http://www.makersacademy.com")
    @bookmarks = Bookmarks.new.print_all
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmark (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmark (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmark (url) VALUES('http://www.google.com');")

    bookmarks = Bookmark.print_all

    expect(bookmarks).to include('http://www.makersacademy.com')
    expect(bookmarks).to include('http://www.destroyallsoftware.com')
    expect(bookmarks).to include('http://www.google.com')
  end
end


