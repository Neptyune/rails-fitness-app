Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'

  get '/account', to: 'account#profile'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/signup' => 'accounts#new'

  resources :accounts
  root "home#index"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
