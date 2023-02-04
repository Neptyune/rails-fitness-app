Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'

  resources :accounts
  root "accounts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
