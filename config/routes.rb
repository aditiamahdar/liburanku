Rails.application.routes.draw do
  root to: 'pages#home'

  # Devise
  devise_for :users, controllers: { registrations: 'registrations' }

  # Pages
  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
end
