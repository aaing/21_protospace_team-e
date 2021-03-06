Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  resources :tags, only: [:index, :show]
end
