 Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "articulos#index"
  resources :articulos
  resources :oficials do
   resources :personas, module: :oficials
  end
  resources :propietarios do
   resources :personas, module: :propietarios
  end
  resources :licenses
  resources :infraccions
  
  namespace :api do
   resources :vehicles
  end
end
