Rails.application.routes.draw do
  root "categories#index"
  patch 'products/:id/inline_update_product', to: 'products#inline_update_product', as: 'inline_update_product'
  resources :products
  resources :categories
end
