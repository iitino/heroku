Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  root 'home#index'

  get 'home/index'
  get 'news/index'
  get 'shop/index'
  get 'donate/index'
  get 'help/index'

end
