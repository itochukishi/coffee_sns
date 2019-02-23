Rails.application.routes.draw do
resources :coffee,only: [:index, :create, :show]
resources :genre,:community,:like, only: [:index, :create, :show, :destroy, ]
resources :user, only: [:index, :new,:create, :show,:destroy, :update]
end
