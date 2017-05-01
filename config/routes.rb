Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  devise_for :users, controllers: { registrations: "registrations"}
    get 'posts/signup', to: 'posts#signup'

  resources :posts do
    collection do
      get :service
      get :aboutus
      get :work_case
    end
  end


  resources :articles
  root 'posts#index'

end
