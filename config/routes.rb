Rails.application.routes.draw do
  root "stores#index"
  
  resources :books
  resources :stores
end
