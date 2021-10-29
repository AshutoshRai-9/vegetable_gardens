Rails.application.routes.draw do
  #get 'home/index'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: "home#index"
  resources :vegetables 
  get "/category/:sid", to: "vegetables#show"
  resources :categories
  resources :carts
  get "/fetch_products" => 'vegetables#from_category', as: 'fetch_products'



end
