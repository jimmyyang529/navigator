Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
<<<<<<< HEAD
=======
  devise_for :users, controllers: { registrations: "registrations"}
    get 'posts/signup', to: 'posts#signup'

>>>>>>> front_end

  devise_for :users

<<<<<<< HEAD
  resources :posts do
    collection do
      get :service
      get :aboutus
      get :work_case
=======


  resources :posts do
  	resources :countries, :controller => 'post_countries'
  end

    resources :posts do
      collection do
        get :service
        get :info
        get :aboutus
      end
>>>>>>> e3667cebbe37fad44a0916858f542f283cfa34ae
    end


  resources :articles

  root 'posts#index'

end
