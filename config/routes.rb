Rails.application.routes.draw do
  devise_for :users
  root 'topics#index'
  resources :topics
  resources :users, only: [:show]
  resources :tags, only: [:new, :create]
end
