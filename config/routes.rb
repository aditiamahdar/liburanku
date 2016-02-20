Rails.application.routes.draw do
  root to: 'pages#home'

  # Devise
  devise_for :users, controllers: { registrations: 'registrations' }

  # Pages
  get 'home', to: 'pages#home'
  get 'features', to: 'pages#features'
  get 'help', to: 'pages#help'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  resources :destination_images
  resources :destinations
  resources :categories
end
