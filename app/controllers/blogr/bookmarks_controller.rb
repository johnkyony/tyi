class Blogr::BookmarksController < ApplicationController
  def index
    posts = Bookmark.where(bookmarker_id: current_user.id).pluck(:bookmarkee_id)
    @bookmarks = Post.where(id: posts)
  end
  
  def new 
   
  end
  
  def create
    @post = Post.find_by_id(params[:post_id])
    user = User.find_by_id(current_user.id)
    bookmark = user.bookmark(@post)
    redirect_to :back 
   
    
  end
  
  private
  
  def post_params
    params.require(:bookmark).permit(:user_id, :post_id)
  end
  
end
