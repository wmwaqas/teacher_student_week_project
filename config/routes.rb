Rails.application.routes.draw do
  # root to: 'pages#home'
  root to: 'pages#home'

  devise_for :users
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
