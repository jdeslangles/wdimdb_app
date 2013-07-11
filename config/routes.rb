WdimdbApp::Application.routes.draw do

  resources :actors
  resources :movies

  get "sessions/new"

  get "sessions/create"

  get "sessions/destroy"

  resources :users
  resources :sessions, only: [:create, :destroy]


  get '/search', to: 'search#index', as: 'new_search'
  post '/search', to: 'search#search', as: 'search'

  get '/login', to: 'sessions#new'


  root to: "movies#index"
end
