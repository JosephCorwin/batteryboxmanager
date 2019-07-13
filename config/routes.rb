Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'dashboard#index'

  post 'search', to: 'dashboard#search' 

  resources :riders
  resources :batteries
  resources :chargers
  resources :battery_types
  resources :charger_types
  resources :logs
  resources :check_ins

end
