Rails.application.routes.draw do
  post '/connect_users', to: 'users#create_connection'
  post '/signup', to: 'users#signup'
  get '/validate', to: 'users#validate'
  post '/signin', to: 'users#signin'
  resources :connections
  resources :events
  resources :stories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
