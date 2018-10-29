Rails.application.routes.draw do
  resources :scholarship_guides
  resources :scholarships
  root 'application#hello'
end
