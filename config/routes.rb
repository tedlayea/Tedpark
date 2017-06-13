Rails.application.routes.draw do
  get 'spots/index'

  get 'favourites/index'
  root 'spots#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
