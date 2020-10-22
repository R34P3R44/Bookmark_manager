require_relative '../lib/model/bookmarks'

def connect_to_test_database
  connection = PG.connect(dbname: 'bookmark_manager_test')
end

def creating_bookmarks
  Bookmarks.create(url:'http://www.makersacademy.com')
  Bookmarks.create(url:'http://www.destroyallsoftware.com')
  Bookmarks.create(url:'http://www.google.com')
end

