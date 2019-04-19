Rails.application.routes.draw do

  # resources :categories, only: [:new, :index, :show, :edit, :update, :create]
  # resources :cards, only: [:new, :index, :show, :edit, :update, :create, :destroy]
  # resources :transactions, only: [:new, :index, :show]
  # resources :users, only: [:new, :index, :show, :edit, :update, :create]
  # resources :companies, only: [:new, :index, :create, :show]

  get '/categories', to: 'categories#index'
  get '/categories/:id', to: 'categories#show', as: 'category'
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'
  get '/categories/:id/edit', to: 'categories#edit'
  patch '/categories/:id', to: 'categories#update'

  get '/cards', to: 'cards#index'
  get '/cards/new', to: 'cards#new'
  get '/cards/:id', to: 'cards#show', as: 'card'
  post '/cards', to: 'cards#create'
  get '/cards/:id/edit', to: 'cards#edit'
  patch '/cards/:id', to: 'cards#update'
  delete '/cards/:id', to: 'cards#destroy'

  get '/companies', to: 'companies#index'
  get '/companies/:id', to: 'companies#show', as: 'company'
  get '/companies/new', to: 'companies#new'
  post '/companies', to: 'companies#create'

  get '/transactions', to: 'transactions#index'
  get '/transactions/:id', to: 'transactions#show', as: 'transaction'
  get '/transactions/new', to: 'transactions#new'
  post '/transactions', to: 'transactions#create'

  get '/checkout', to: 'transactions#checkout', as: 'checkout'
  post '/checkout', to: 'transactions#checkout'


  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/new', to: 'users#new'
  post '/users', to: 'users#create', as: 'yo'
  get '/users/:id/:edit', to: 'users#edit'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy', as: 'remove'
  get '/deposit/:id', to: 'users#deposit', as: 'deposit'
  patch '/deposit/:id', to: 'users#add_to_balance'
  get '/signup', to: 'users#new', as: 'register'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  patch '/cart', to:"carts#update"
  delete '/cart', to: "carts#delete_item"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
