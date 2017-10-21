Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :news
  devise_for :users
  root 'home#index'
  get 'addcart', to:'cart#add_to_cart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
