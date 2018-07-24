Rails.application.routes.draw do
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  resources :portfolios
  
  root to: 'pages#home'
end
