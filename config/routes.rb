Rails.application.routes.draw do
  
 root to: "welcome#index"

 resources :posts
 
 resources :users, except: [:new]
 get "/sign_up", to: "user#new"
 
 resources :places
 
 get "/login", to: "sessions#new"
 post "/login", to: "sessions#create"
  
end
