Rails.application.routes.draw do
  
  resources :book_lists
  resources :books
  resources :borrows
  resources :samples
  get "/" => "home#index"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session

  resources :menus
  resources :menu_items
  resources :active_menus
  resources :orders
  resources :order_items
  resources :users
  get "/user/orders/", to: "user_orders#index", as: "user_orders"
  get "/active/orders/", to: "active_orders#index", as: "active_orders"
  get "/user/completed/", to: "user_completed_orders#index", as: "completed_orders"
  get "/owner/completed/", to: "owner_completed_orders#index", as: "owner_completed_orders"
 
end
