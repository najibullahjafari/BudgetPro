Rails.application.routes.draw do
  devise_for :users

  resources :categories do
    resources :transactions, only: [:index, :new, :create]
  end

  root 'categories#index'
end
