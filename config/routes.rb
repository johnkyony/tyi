Rails.application.routes.draw do
 
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
