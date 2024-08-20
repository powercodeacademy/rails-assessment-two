Rails.application.routes.draw do
  resources :sweets, only: :index
  resources :vendors, only: %i[index show]
end
