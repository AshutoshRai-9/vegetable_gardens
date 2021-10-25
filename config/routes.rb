Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: "home#index"
  resources :vegetables 
  resources :categories
  resources :carts
  


end
