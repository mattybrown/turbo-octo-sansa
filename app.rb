require "sinatra"
require "sinatra/activerecord"

set :database, "sqlite3:///blog.db"

class Post < ActiveRecord::Base
end

helpers do
  def title
    if @title
      "#{@title} -- My Blog"
    else
      "My Blog"
    end
  end

  def pretty_date(time)
    time.strftime("%d %b %Y")
  end
end

get "/" do
  @posts = Post.order("created_at DESC")
  erb :"posts/index"
end
