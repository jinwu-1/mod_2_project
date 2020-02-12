Rails.application.routes.draw do
  resources :reviews, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :hikes, only: [:index, :show]
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
