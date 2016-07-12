Rails.application.routes.draw do
  resources :drought_users
  resources :droughts
  devise_for :users, :controllers => {:registrations => :registrations } 
  resources :states do
    resources :regions, shallow: true
  end
  root 'states#index'
end
