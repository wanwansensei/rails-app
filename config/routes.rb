Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get '/help' => 'static_pages#help'

  get '/about' => 'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact' => 'static_pages#contact'

  get '/signup' => 'users#new'

  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :users

  resources :microposts, only:[:create,:destroy]

end
