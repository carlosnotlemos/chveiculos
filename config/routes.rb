Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  # Se for utilizar outras rotas, retirar scope.
  scope only: %i[ index ] do
    resources :academics, path: 'formacoes'
    resources :projects, path: 'projetos'
    resources :contacts, path: 'contatos'
  end

  namespace :admin do
    root "dashboard#index"
    resources :dashboard, only: %i[ index create ], path: ''
  end
end
