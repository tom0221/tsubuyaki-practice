Rails.application.routes.draw do
  get 'registrations/new'
  resources :user_s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
