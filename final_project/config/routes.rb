Rails.application.routes.draw do
  resources :droughts
  devise_for :users, :controllers => {:registrations => :registrations } 
  resources :states do
    resources :regions, shallow: true
     resources :drought_users, shallow:true
  end
  root 'states#index'
end
