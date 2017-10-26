Rails.application.routes.draw do
  resources :subjects
  resources :courses
  resources :students
  resources :news
  devise_for :users
  root 'home#index'
  get 'addcart', to:'cart#add_to_cart'
  get 'clearcart', to:'cart#clear_cart'
  get 'checkout', to: 'cart#checkout'
  get 'removecart', to: 'cart#remove_from_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
