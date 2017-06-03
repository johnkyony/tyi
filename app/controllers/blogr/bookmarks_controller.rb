class Blogr::BookmarksController < ApplicationController
  def index
    @bookmarks Bookmark.where(user_id: current_user.id)
  end
  
  def new 
    @bookmark = Bookmark.new
  end
  
  def create
    @bookmark = current_user.bookmarks.build(post_params)
    if @bookmark.save!
      flash[:notice] = "The bookmark has been saved"
      redirect_to :back 
    else
      flash[:notice] = "This bookmark has been saved before"
      redirect_to :back 
      
    end
    
  end
  
  private
  
  def post_params
    params.require(:bookmark).permit(:user_id, :post_id)
  end
  
end
