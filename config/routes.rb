Rails.application.routes.draw do

  resources :accounts
  get '/dashboard', to: 'accounts#dashboard'

  get '/login', to: 'sessions#login'
  get '/logout',  to: 'sessions#logout'


  # post '/login', to: 'sessions#login'
  get 'sessions/login'
  post 'sessions/login'
  get 'sessions/logout'


  get '/signup' => 'accounts#new'


  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
end
