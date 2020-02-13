Rails.application.routes.draw do
  root 'users#welcome'
  resources :reviews, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :hikes, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create]
  resources :login, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
