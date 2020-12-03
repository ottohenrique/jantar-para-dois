Rails.application.routes.draw do
  get 'markets/index'
  get 'markets/show'
  get 'sessions/login'
  post 'sessions/login', to: 'sessions#create'
  get 'sessions/welcome'

  get '/receitas', to: 'recipes#index', as: :recipes
  get '/receita/:id', to: 'recipes#show', as: :recipe

  get '/mercados', to: 'markets#index', as: :markets
  get '/mercado/:id', to: 'markets#show', as: :market

  root to: 'recipes#index'
end
