Rails.application.routes.draw do
  root 'products#index'
  resources :users
  resources :products do
    resources :comments, only: [:create]
  end
  resources :customers
  resources :prices
  resources :costs
  resources :quotations
  resources :bookings
  # resources :products

  # resources :orders do
  #   member do
  #       post :vote
  #   end
  
  resources :comments, only: [:create] do
    member do
      post :vote
    end
  end
  

  
  
  




  # get '/bookings' => 'bookings#dcq'
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
