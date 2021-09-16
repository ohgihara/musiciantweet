Rails.application.routes.draw do
  devise_for :users
  root to: 'musicians#index'
  resources :musicians do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
