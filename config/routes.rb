Rails.application.routes.draw do
  # root to: 'pages#home'
  root to: 'pages#home'


  # put 'users/change_status'
  # put "/users/change_status" , :as => 'change_status'
  put 'users/:id/make_student' => 'users#make_student', :as => "make_student"
  put 'users/:id/make_admin' => 'users#make_admin', :as => "make_admin"
  devise_for :users
  resources :users
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
