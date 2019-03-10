class ApplicationController < ActionController::Base

def index_1
  @coffee_feeds  = Coffee_feeds.all
end

def genre
  @genres  = Genres.all
end

end
