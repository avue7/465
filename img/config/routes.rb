Rails.application.routes.draw do
  devise_for :users
  resources :images do
    resources :image_users, shallow: true
     resources :tags, shallow: true
  end
  root 'images#index'
  get 'new', to: 'tags#new'
end
