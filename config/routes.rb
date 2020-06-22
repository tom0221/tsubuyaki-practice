Rails.application.routes.draw do
  resources :tweets
  get 'settings/edit'
  resources :users
  # get 'sessions/new'
  #get 'registrations/new'
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :settings, only: [:edit, :update]
  resources :users, only: [:index, :show] do
    get :favorites, on: :member
  end

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
  end

  root to: 'registrations#new'

  resources :user_s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
