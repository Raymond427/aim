Rails.application.routes.draw do

  #root 'chpaters'
  #get '/chapters' => 'index#chapters', as: '/'

  resources :chapters#, except: :index

  resources :news
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
