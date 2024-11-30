Rails.application.routes.draw do
  resources :notes
  resources :favorites
  resources :users

  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/auto_login', to: 'auth#auto_login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
