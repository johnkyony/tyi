Rails.application.routes.draw do
 

  namespace :readers do
    get 'home/index'
  end

  namespace :readers do
    get 'home/show'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }
 namespace :blogr do 
  resources :categories do 
    resources :posts do 
      get :public , :on => :collection 
      member do 
       patch :publish 
       patch :unpublish 
      end
    end
  end
  resources :categories do 
    resources :posts do 
      resources :category_tags
    end
  end
  
    resources :posts do 
      get :public , :on => :collection 
      member do 
       patch :publish 
       patch :unpublish 
      end
    end
 end
  
  mount HyperMesh::Engine => '/rr'
 root to: "blogr/posts#index"
end
