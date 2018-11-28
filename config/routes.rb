Rails.application.routes.draw do
  get "sessions/new"
  get "users/new"
  root "products#index"
  get  "/fesus/index" => "fesus#index"
  get  "/fesus/:id" => "fesus#show"
  get  "/products/search" => "products#search"
  get  "/static_pages/help" => "static_pages#help"
  get  "/static_pages/home" => "static_pages#home"
  get  "/about" => "static_pages#about"
  get  "/signup" => "users#new"
  post "/signup" => "users#create"
  get    "/login" => "sessions#new"
  post   "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  resources :users
end