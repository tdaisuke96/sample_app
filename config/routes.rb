Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/home',    to: 'static_pages#home'
  # asで名前付きルートを変更することができる
  get '/help',    to: 'static_pages#help' #, as: 'helf'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
#下記は周りくどいため使用しない  
=begin
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  root 'static_pages#home'
=end
end
