Rails.application.routes.draw do
  #get 'registrations/new'
  resources :registrations, only: [:new, :create]

  root to: 'registrations#new'

  resources :user_s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
