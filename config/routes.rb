Rails.application.routes.draw do

  get 'home/index', as: 'home'
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'home', to: 'static_pages#home'
  get 'me', to: 'me#show', as: 'me'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  # get '/users/:id', to: 'users#show', as: 'user'
  resources :scholarship_guides
  resources :user_tasks

  root 'static_pages#home'

  resources :users

  #resources :users do
  # 	resources :user_tasks
 	#end

  post 'destroy' => 'sessions#destroy', as: :destroy

end
