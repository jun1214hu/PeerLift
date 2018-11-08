Rails.application.routes.draw do
  resources :users
  root 'home#show'
  get 'auth/oauth2/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'



  get 'dashboard' => 'dashboard#show'
  

end



