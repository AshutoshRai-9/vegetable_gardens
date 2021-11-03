Rails.application.routes.draw do
  #get 'home/index'
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  #root to: "home#index"
root to: "vegetables#index"
  resources :vegetables 
  #get "/category/:sid", to: "vegetables#show"
  resources :categories
  resources :carts
  get "/fetch_products" => 'vegetables#from_category'

  post "/add_items" => 'carts#Add_more_items', as: 'add_items'
  get "/buynow", to: "carts#buynow"

end
