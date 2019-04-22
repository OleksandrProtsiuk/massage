Rails.application.routes.draw do
  resources :massage_types
  root 'static_pages#index', as: 'root'

  get 'static_pages/index'
  get 'static_pages/price'
  get 'static_pages/contacts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
