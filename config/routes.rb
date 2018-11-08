Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  resources :scholarship_guides 
  root 'static_pages#home'

  resources :users do 
  	resources :user_tasks
	end 

  root 'home#show'
  get 'auth/oauth2/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

  get 'dashboard' => 'dashboard#show'
  
end



