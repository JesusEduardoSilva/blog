Rails.application.routes.draw do

  resources :produtos
  root 'home#index'
  
  get 'home/index'

  resources :comentarios
  resources :posts

  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  
  resources :usuarios

end
