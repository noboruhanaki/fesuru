Rails.application.routes.draw do
  root "products#index"
  get  "fesus/index" => "fesus#index"
  get  "fesus/:id" => "fesus#show"
  get  "products/search" => "products#search"
  get  'static_pages/help'
  get  'products/search'
end