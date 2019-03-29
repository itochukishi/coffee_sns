Rails.application.routes.draw do
  devise_for :users
  root 'coffee_sns#index'
resources :coffee_sns,only: [:index, :create, :show]
resources :genre,:community,:like, only: [:index, :create, :show, :destroy, ]
resources :user, only: [:index, :new,:create, :show,:destroy, :update]
end
