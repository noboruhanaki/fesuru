Rails.application.routes.draw do
  get 'users/new'

  root "products#index"
  get  "/fesus/index" => "fesus#index"
  get  "/fesus/:id" => "fesus#show"
  get  "/products/search" => "products#search"
  get  '/static_pages/help'
  get  '/static_pages/home'
  get  '/products/search'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end