Rails.application.routes.draw do
  get  'static_pages/home'
  get  'static_pages/help'
  get  'products/index'
  get  'products/search'
  root 'application#hello'
end