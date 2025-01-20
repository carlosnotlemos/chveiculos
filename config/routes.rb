Rails.application.routes.draw do
  root 'home#index'

  # Se for utilizar outras rotas, retirar scope.
  scope only: %i[ index ] do
    resources :academics, path: 'formacoes'
    resources :projects, path: 'projetos'
    resources :contacts, path: 'contatos'
  end
end