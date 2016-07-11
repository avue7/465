Rails.application.routes.draw do
  resources :precipitations
  resources :droughts
  devise_for :users, :controllers => {:registrations => :registrations } 
  resources :states do
    resources :state_drought_pres
  end
  root 'states#index'
end
