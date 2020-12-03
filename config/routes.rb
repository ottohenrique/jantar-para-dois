Rails.application.routes.draw do
  get 'sessions/login'
  post 'sessions/login', to: 'sessions#create'
  get 'sessions/welcome'

  get '/receitas', to: 'recipes#index', as: :recipes
  get '/receita/:id', to: 'recipes#show', as: :recipe

  root to: 'recipes#index'
end
