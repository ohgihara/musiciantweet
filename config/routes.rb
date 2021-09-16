Rails.application.routes.draw do
  root to: 'musicians#index'
  resources :musicians, only: [:index, :new, :create, :destroy, :edit, :update]
end
