class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :category_menu
  before_action :posts
  
  def category_menu
    @categories = Category.all
  end
  
  def posts
    if params[:category_id] != nil
     
     @posts = Post.where(category_id: params[:category_id] )
   else
     @posts = Post.all 
   end
  end
 
end
