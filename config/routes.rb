Rails.application.routes.draw do
  resources :sessions, except: [:index, :edit, :update]
  get 'city/show'
  resources :user, only: [:new, :create]
  resources :city, only: [:show]
  resources :gossip, only: [:new, :create, :edit, :update, :destroy]
  get '/user/:id', to: 'user#show'
  get '/welcome', to: 'welcome#show'
  get '/gossip/:id', to: 'gossip#show'
  get '/', to: 'welcome#show'
  get '/welcome/:first_name', to: 'welcome#show'
  get '/team', to: 'team#show'
  get '/contact', to: 'contact#show'
end
