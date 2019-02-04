Rails.application.routes.draw do
  get '/welcome/:first_name', to: 'welcome#show'
  get '/team', to: 'team#show'
  get '/contact', to: 'contact#show'
end
