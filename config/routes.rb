Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movie
  root to: 'movies#home'

  resources :lists, only: [:index]
end
