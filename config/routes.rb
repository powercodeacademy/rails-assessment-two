Rails.application.routes.draw do
  resources :sweets
  resources :vendors
  resources :vendor_sweets


  resources :vendors do
    resources :vendor_sweets, only: [:create]
  end

end
