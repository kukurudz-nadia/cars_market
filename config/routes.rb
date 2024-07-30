# frozen_string_literal: true

Rails.application.routes.draw do
  resources :advertisements
  devise_for :users

  root 'home#index'
end
