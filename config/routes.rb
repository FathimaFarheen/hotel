Rails.application.routes.draw do
  resources :order_items
  resources :dishes
  resources :hotelmenus
  resources :orders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
