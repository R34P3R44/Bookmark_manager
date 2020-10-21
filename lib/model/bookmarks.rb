require 'pg'

class Bookmarks
  def print_all
    con = PG.connect(:dbname => "bookmark_manager")
    "Succesfully connected to database."
    rs = con.exec "SELECT * FROM bookmarks;"
    rs.map { |bookmark| bookmark['url'] }
  end

  def self.print_all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end
