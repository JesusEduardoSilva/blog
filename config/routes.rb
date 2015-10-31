Rails.application.routes.draw do

  resources :avaliacaos
  resources :sugestaos
  resources :produtos
  root 'home#index'
  
  get 'home/index'
  get 'avaliacaos/:id_produto/pegar_imagem', to: 'avaliacaos#pegar_imagem'
  get 'sugestaos/:id_produto/pegar_imagem', to: 'sugestaos#pegar_imagem'

  resources :comentarios
  resources :posts

  devise_for :usuarios, :controllers => { registrations: 'registrations' }
  
  resources :usuarios

end
