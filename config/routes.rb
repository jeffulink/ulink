Rails.application.routes.draw do
  resources :users
  resources :products
  resources :customers
  resources :prices
  resources :costs
  resources :quotations





  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  # get '/users' => 'users#index'
  # get '/users/new' => 'users#new'
  # post '/users/' => 'users#create'

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products/' => 'products#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
