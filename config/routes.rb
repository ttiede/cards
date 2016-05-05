Rails.application.routes.draw do
  resources :cards
  resources :contacts
  resources :cards
  resources :contacts
  resources :contacts
  devise_for :users
  get 'static_pages/home'
  get 'static_pages/help'
  root 'static_pages#home'
end
