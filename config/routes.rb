Rails.application.routes.draw do
  resources :customers
  resources :products
  resources :categories
  resources :suppliers
  resources :employees
  resources :roles
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
