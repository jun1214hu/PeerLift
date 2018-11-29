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


  root 'static_pages#home'

  resources :users do
      resources :user_tasks
    end


  #resources :users do
  # 	resources :user_tasks
 	#end

  post 'destroy' => 'sessions#destroy', as: :destroy

  post 'recordlog' => 'record_logs#create', as: :record_log
  patch 'recordlog' => 'record_logs#update', as: :record_update
  post 'recordlog' => 'record_log#destroy', as: :record_destroy

  post 'saved_scholarship' => 'saved_scholarships#create', as: :save_scholarship
  delete 'saved_scholarship' => 'saved_scholarships#destroy', as: :unsave_scholarship

  patch 'me' => 'me#complete', as: :scholarship_completed

  post 'me' => 'me#start', as: :scholarship_start
  delete 'me' => 'me#unsave_from_started', as: :unsave_scholarship_me_started
  delete 'me' => 'me#unsave_from_saved', as: :unsave_scholarship_me_saved


end
