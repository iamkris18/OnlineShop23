Rails.application.routes.draw do
  get 'cards/show'
  resource :cards,only:[:show]
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'shops/index'
  get 'shops/show'
  resources :products
  resources :shops,only:[:index, :show]
resources :order_items
  root 'shops#index'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
