Rails.application.routes.draw do
  resources :cards
  resources :contacts
  devise_for :users
  resources :tags, only: [:index, :show]
  get 'static_pages/home'
  get 'static_pages/help'
  root 'static_pages#home'
end
