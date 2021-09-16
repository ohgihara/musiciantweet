Rails.application.routes.draw do
  root to: 'musicians#index'
  resources :musicians
end
