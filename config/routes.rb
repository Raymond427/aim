Rails.application.routes.draw do
  resources :chapters#, except: :index
  resources :appointments
  resources :guests
  resources :mail_blasters
  resources :members
  resources :news

  #When there are more than one AIM chapters
  root 'chapters#index'

  get '/executives', to: 'members#executives'
  get '/signup', to: 'members#new'
  get '/after_signup', to: 'members#after_signup'
  get '/sponsorship', to: 'chapters#sponsorship'
  get '/calendar', to: 'chapters#calendar'
  match 'auth/:provider/callback', to: 'sessions#linkedin_signup', via: [:get, :post]
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
