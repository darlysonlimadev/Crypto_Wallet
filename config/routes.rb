Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'sessions/new'
  resources :users    #, only: [:new,:create]
  resources :sessions
  resources :tipo_mineracaos
  get 'home/index'
  resources :moedas

  root 'sessions#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
