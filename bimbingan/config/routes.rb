Rails.application.routes.draw do
  resources :murids
  resources :lectures
  resources :majors
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
