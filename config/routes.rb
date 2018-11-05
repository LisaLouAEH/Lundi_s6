Rails.application.routes.draw do

  root  'static_page#home'

  get 'sessions/new'
  get 'users/new'

  get    '/signup',  to: 'users#new'
  resources :users
  #---------------------------->
  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  #--------------------------->
end
