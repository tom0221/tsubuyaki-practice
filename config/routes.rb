Rails.application.routes.draw do
  resources :users
  # get 'sessions/new'
  #get 'registrations/new'
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :show]

  root to: 'registrations#new'

  resources :user_s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
