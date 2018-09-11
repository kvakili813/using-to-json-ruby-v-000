Rails.application.routes.draw do
  get 'home', to: 'static#home'
  resources :orders
  resources :authors
  resources :posts, only: [:show, :index, :new, :create]
  get '/posts/:id/description', to: 'posts#description'
  get '/posts/:id/inventory', to: 'posts#inventory'
  # get '/products/:id/data', to: 'products#data'
end
