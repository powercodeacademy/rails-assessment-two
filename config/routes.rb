Rails.application.routes.draw do
  resources :sweets, only: %i[index show]
  resources :vendors, only: %i[index show]
  resources :vendor_sweets, only: :create
end
