Rails.application.routes.draw do
  get '/schools',to: 'schools#index'
  get '/school',to: 'schools#new'
  post '/school',to: 'schools#create'
  delete '/school/:id', to: 'schools#destroy'

  get '/new_subject', to: 'subjects#new'
  post 'create_subject', to: 'subjects#create'
  get '/subjects', to: 'subjects#index'

  get 'users', to: 'users#index'
  get 'new', to: 'users#new'
  post 'create', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
