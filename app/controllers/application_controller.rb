class ApplicationController < ActionController::Base

def index_1
  @coffee_feeds  = Coffee_feed.all
end

def genre
  @genres  = Genre.all
end

end
