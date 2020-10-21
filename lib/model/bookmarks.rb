require 'pg'

class Bookmarks
  def print_all
    con = PG.connect(:dbname => "bookmark_manager")
    "Succesfully connected to database."
    rs = con.exec "SELECT * FROM bookmarks;"
    rs.map { |bookmark| bookmark['url'] }
  end
end
