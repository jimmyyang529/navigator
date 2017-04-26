Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  devise_for :users



  resources :posts do
  	resources :countries, :controller => 'post_countries'
  end

    resources :posts do
      collection do
        get :service
        get :info
        get :aboutus
      end
    end



  resources :writers do
  	resources :articles
  end

  root 'posts#index'

end
