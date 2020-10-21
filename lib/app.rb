require 'sinatra/base'
require_relative './model/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new.print_all
  end

  run! if app_file == $0
end
