class CoffeeSnsController < ApplicationController

before_action :move_to_index, except: :index


 def index
  @coffee_feeds  = CoffeeFeed.all
  @genres  = Genre.all
 end

 def create
  CoffeeFeed.create(message: coffee_feeds_params[:message],language: coffee_feeds_params[:language] )
  redirect_to action: :index
  # Genre.create(country: genre_params[:country],supply_chain: genre_params[:supply_chain],image: genre_params[:image],message: genre_params[:message)
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

private
def genre_params
  params.permit(:country, :supply_chain, :image, :message)
end

def coffee_feeds_params
  params.permit(:language,:image, :message)
end

end
