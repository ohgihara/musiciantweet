Rails.application.routes.draw do
  devise_for :users
  root to: 'musicians#index'
  resources :musicians
  resources :users, only: :show
end
