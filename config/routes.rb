Rails.application.routes.draw do


  resources :guests
  resources :mail_blasters
  resources :members
  get '/executives', to: 'members#executives'
  root 'chapters#index'

  #When there is only one AIM chapter
  #get '/chapters' => 'index#chapters', as: '/'
  #root '/'

  #When there are more than one AIM chapters
  #get '/chapters' => 'index#chapters', as: '/'

  resources :chapters#, except: :index
  get '/sponsorship', to: 'chapters#sponsorship'
  get '/calendar', to: 'chapters#calendar'

  match 'auth/:provider/callback', to: 'sessions#linkedin_signup', via: [:get, :post]

  resources :news
  get '/signup', to: 'members#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
