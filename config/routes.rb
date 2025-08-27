Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sweets, only: %i[index show]
  resources :vendors, only: %i[index show]
  resources :vendor_sweets, only: %i[create destroy]
end
