Rails.application.routes.draw do
  get '/movies/previous', to: 'movies#previous'
  get '/movies/popular', to: 'movies#popular'
  post '/movies', to: 'movies#create'

  root to: 'static#index'
end
