Rails.application.routes.draw do

  resources :accounts

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'sessions/login'
  post 'sessions/login'
  get 'sessions/logout'

  delete '/logout',  to: 'sessions#destroy'
  get '/accounts', to: 'accounts#dashboard'

  get '/signup' => 'accounts#new'


  root "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 
end
