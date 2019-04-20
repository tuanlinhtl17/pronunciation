# frozen_string_literal: true

Rails.application.routes.draw do
  get 'likes/destroy'
  get 'likes/create'
  root 'static_pages#home'

  resources :lessons
  resources :likes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get '/search' => 'search#index'
end
