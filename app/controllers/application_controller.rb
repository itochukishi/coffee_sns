class ApplicationController < ActionController::Base


before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(resource)
    '/users/sign_in' # サインアウト後のリダイレクト先URL
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
  end

def index_1
  @coffee_feeds  = Coffee_feed.all
end

def genre
  @genres  = Genre.all
end

end
