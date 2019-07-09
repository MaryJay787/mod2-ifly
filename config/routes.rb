Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome', to: 'flyers#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/find_my_date/:id', to: 'flyers#find_my_date'

  resources :flyers, :airports, :conversation, :meetups, :messages
end
