Rails.application.routes.draw do
  root 'static_pages#splash'

  get 'static_pages/splash'
devise_for :users

resources :categories do
  resources :transactions, only: [:index, :new, :create]
end
end

