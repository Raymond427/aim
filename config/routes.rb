Rails.application.routes.draw do


  root 'chapters#index'

  #When there is only one AIM chapter
  #get '/chapters' => 'index#chapters', as: '/'
  #root '/'
  
  #When there are more than one AIM chapters
  #get '/chapters' => 'index#chapters', as: '/'

  resources :chapters#, except: :index

  resources :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
