Rails.application.routes.draw do
 
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
 root 'blogr/posts#index'
end
