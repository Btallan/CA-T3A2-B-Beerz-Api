Rails.application.routes.draw do
  resources :attendees
  resources :events
  resources :orders
  resources :tags
  resources :reviews
  resources :users
  resources :products
  resources :comments
  resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
