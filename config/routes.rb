Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :posts

  resources :writers do
  	resources :articles
  end

  root 'posts#index'
end
