Rails.application.routes.draw do
  resources :sweets
  resources :vendors
  resources :vendor_sweets, only: [:show, :edit, :update, :destroy, :create]
end
