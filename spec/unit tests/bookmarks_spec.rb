require 'model/bookmarks.rb'

describe Bookmarks do
  # it "responds to all method" do
  #   expect(subject).to respond_to(:all)
  # end

  # it "returns default bookmarks" do
  #   expect(subject.all).to eq (["http://www.makersacademy.com", "http://www.theguardian.com"])
  # end

  # it "connects PG to PostgreSQL bookmark_manager database" do
  #   expect(subject.print_all).to eq ("Succesfully connected to database.")
  # end

  it "retrieves all records from bookmarks table" do
    expect(subject.print_all).to include("http://www.makersacademy.com")
  end
end
