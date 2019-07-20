Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'dashboard#index'

  post 'search', to: 'dashboard#search' 

  resources :riders do
    resources :batteries, only: [ :new, :edit, :create, :update ] 
    resources :chargers , only: [ :new, :edit, :create, :update ] 
  end
  resources :batteries, only: [ :index, :show, :destroy ]
  resources :chargers , only: [ :index, :show, :destroy ]
  resources :battery_types
  resources :charger_types
  resources :logs
  resources :check_ins

end
