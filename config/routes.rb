Rails.application.routes.draw do
  root to: 'pages#survey'
  get 'politicians', to: 'pages#politicians'
  post '/', to: 'pages#results', as: :result
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
