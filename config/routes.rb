Rails.application.routes.draw do
  get 'labels/resources'
  devise_for :users
  root to: 'events#index'
  resources :events
  resources :posts
  resources :labels
end
