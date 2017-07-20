Rails.application.routes.draw do
  # root to: 'pages#home'
  root to: 'pages#home'


  put 'users/change_status'
  # put 'admin/:id' => 'users#change_status', :as => "change_status"
  devise_for :users
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
