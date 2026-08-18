Rails.application.routes.draw do
  resources :vendors do
    resources :vendor_sweets, only: [:create]
  end
  resources :sweets, only: [:index, :show]
end