Rails.application.routes.draw do
  resources :scholarship_guides
  root 'application#hello'
end
