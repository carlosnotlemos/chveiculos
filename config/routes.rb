Rails.application.routes.draw do
  root 'home#index'

  resources :academics, only: %i[ index ], path: 'formacao'
end