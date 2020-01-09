Rails.application.routes.draw do
  devise_for :users
  get 'tweets/index'
  get 'tweets/new'
  get 'tweets/create'
  get 'tweets/show'
  get 'tweets/edit'
  get 'tweets/destroy'
  get 'sessions/new'
  get 'users/index'
  get 'users/new'
  get 'users/create'
  resources :users do
    resources :tweets, only: [:new,:create]
  end
  get "tweets/index"
  root "users#index"
  resources :sessions, only: [:new,:create,:destroy]
end