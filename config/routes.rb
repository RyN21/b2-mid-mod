Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/amusement_parks', to: 'amusement_parks#index'
  get '/rides', to: 'rides#index'
  get '/mechanics', to: 'mechanics#index'
  get '/amusement_parks/:id', to: 'amusement_parks#show'
  get '/mechanics/:id', to: 'mechanics#show'
  post '/mechanics/:id', to: 'mechanics#update'

end
