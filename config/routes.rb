Rails.application.routes.draw do
  #get 'vegetables/new'
  resources :vegetables 

    resources :categories
  
end
