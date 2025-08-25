Rails.application.routes.draw do
  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
end
