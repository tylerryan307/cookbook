Rails.application.routes.draw do
  resources :recipes
  root controller: 'home', action: 'index'

  get "/about", controller: 'home', action: 'about', as: 'about'
  get "/contact", controller: 'home', action: 'contact', as: 'contact'
  get "/admin", controller: 'admincontroller', action: 'index', as: 'index'


end
