Rails.application.routes.draw do


  devise_for :users
  get 'spots/about' => 'spots#about'
  get 'spots/contact' => 'spots#contact'

  resources :spots
  resources :favourites
  resources :comments

  root 'spots#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
