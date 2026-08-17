Rails.application.routes.draw do
  resources :vendors, only: %i[index show ]
  resources :sweets, only: %i[index show]
  resources :vendor_sweets, only: %i[create]

  root 'static#home'
end
