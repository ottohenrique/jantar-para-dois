Rails.application.routes.draw do
  get 'sessions/login'
  post 'sessions/login', to: 'sessions#create'
  get 'sessions/welcome'

  resource :recipes, only: [:index, :show]

  root to: 'recipes#index'
end
