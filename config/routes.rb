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
  resources :posts do
   get :public , :on => :collection 
   member do
    patch :publish
    patch :unpublish
   end 
  end
 end
  
  mount HyperMesh::Engine => '/rr'
 root to: "readers/home#index"
end
