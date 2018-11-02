Rails.application.routes.draw do
  resources :scholarship_guides
  root 'scholarship_guides#index'
end
