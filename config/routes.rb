Rails.application.routes.draw do
  get '/movies/previous', to: 'movies#previous'
  get '/movies/popular', to: 'movies#popular'
  post '/movies', to: 'movies#create'

  resources :users, only: [:new, :create]

  get '/login', to: 'authentication#new'
  post '/login', to: 'authentication#login'
  get '/logout', to: 'authentication#logout'

  root to: 'static#index'
end
