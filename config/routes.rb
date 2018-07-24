Rails.application.routes.draw do
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  resources :blogs
  resources :portfolios, except: [:show]

  
  root to: 'pages#home'
end
