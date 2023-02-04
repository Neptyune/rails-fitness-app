Rails.application.routes.draw do
  # get 'users/new'
  # get 'sessions/new'
  resources :accounts

  get 'sessions/login'
  post   'sessions/login'
  get 'sessions/logout'
  delete '/logout',  to: 'sessions#destroy'

  get '/signup' => 'accounts#new'

  root "home#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
