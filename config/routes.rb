Rails.application.routes.draw do

  resources :accounts
  get '/dashboard', to: 'accounts#dashboard'

  get '/login', to: 'sessions#login'
  get '/logout',  to: 'sessions#logout'

  get 'sessions/login'
  post 'sessions/login'
  get 'sessions/logout'

  # --- workout routes ---
  # get 'workout_templates/new', to: "workout_templates#new"
  # get 'workout/edit_template'
  # get 'workout/view_templates'

  resources :workout_templates

  get '/signup' => 'accounts#new'

  root "home#index"

end
