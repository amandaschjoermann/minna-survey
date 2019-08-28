Rails.application.routes.draw do
  root to: 'pages#survey'
  get 'politicians', to: 'pages#politicians'



  get 'result/:user_id', to: 'pages#result', as: :top_five

  post '/', to: 'pages#results', as: :result_form

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
