class CoffeeSnsController < ApplicationController

before_action :move_to_index, except: :index


 def index
  @coffee_feeds  = CoffeeFeed.all
  @genres  = Genre.all
 end

 def create
 end

 def show
 end

 def destory
 end

 def new
 end

 def update
 end

def genre

end

  def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
