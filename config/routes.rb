Rails.application.routes.draw do
  get '/search' => 'application#search'
  
  
  #Sign in
  get '/login' => 'pages#login'
  get '/sign_in'=> 'pages#sign_in'
  get '/user_create' => 'pages#login'
  get '/sign_out' =>  'pages#sign_out'
  # Sessions
  get '/sessions/create' => 'sessions#create'
  get '/sessions/new' => 'sessions#new'
  get '/sessions/destroy' => 'sessions#destroy'
 
  #------------------------------
  #Pages
  get '/home' => 'application#home'
  get '/ballet' => 'application#ballet'
    get '/jazz' => 'application#jazz'
  get '/contemporary' => 'application#contemporary'
  get '/modern' => 'application#modern'
    get '/tap' => 'application#tap'
 # Routes for the Studio resource:
  # CREATE
  get '/new_studio' => 'studios#new'
  get '/create_studio' => 'studios#create'

  # READ
  get '/studios' => 'studios#index'
  get '/studios/:id' => 'studios#show'

  # UPDATE
  get '/studios/:id/edit' => 'studios#edit'
  get '/studios/:id/update' => 'studios#update'

  # DELETE
  get '/studios/:id/destroy' => 'studios#destroy'
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get '/new_review' => 'reviews#new'
  get '/create_review' => 'reviews#create'

  # READ
  get '/reviews' => 'reviews#index'
  get '/reviews/:id' => 'reviews#show'

  # UPDATE
  get '/reviews/:id/edit' => 'reviews#edit'
  get '/reviews/:id/update' => 'reviews#update'

  # DELETE
  get '/reviews/:id/destroy' => 'reviews#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------
end
