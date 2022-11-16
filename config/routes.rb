# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'current_time', to: 'static_pages#current_time'
  get 'privacy', to: 'static_pages#privacy'
end
