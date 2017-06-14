Rails.application.routes.draw do
 

  resources :chatrooms
  
  resources :chatrooms do 
    resource :chatroom_users
    resources :messages
  end 
  get 'staffpick/index'

  get 'topstories/index'

  resources :bookmarks

  namespace :readers do
    
    get 'home/index'
    root to: "readers/home#index"
    
  end

  namespace :readers do
    get 'home/show'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
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
      resources :bookmarks do 
        get :public , :on => :collection 
        member do 
         patch :publish 
         patch :unpublish 
        end
      end
    end
    resources :bookmarks
 end
  
  mount HyperMesh::Engine => '/rr'
 root to: "readers/home#index"
end
