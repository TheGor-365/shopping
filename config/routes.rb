Rails.application.routes.draw do
  root "categories#index"
  patch 'products/:id/inline_update', to: 'products#inline_update', as: 'inline_update_product'
  resources :products
  resources :categories
end
