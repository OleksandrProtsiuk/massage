Rails.application.routes.draw do

  resources :users
  root 'static_pages#index', as: 'root'

  get 'static_pages/index'
  get 'static_pages/price'
  get 'static_pages/contacts'

  resources :galleries
  resources :massage_types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
