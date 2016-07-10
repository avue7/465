Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => :registrations }
  resources :states do 
    resources :wildfires, shallow:true
    resources :annual_burnt_acres, shallow:true
  end
  root 'states#index'
end
