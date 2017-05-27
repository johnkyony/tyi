class Blogr::PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  def index
   @current_blogr_tab = :index
   @posts = Post.drafts
  end

  def edit
  end
  def new 
    if current_user.writers_role? || current_user.editors_role 
      @post = Post.new_draft_for(current_user)
    else
      flash[:alert] = "Please enjoy the content while we produce it here"
      redirect_to :back
    end
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.publish
      redirect_to @post, notice: "Successfully published the post!"
    else
      @post.unpublish
      flash.now[:alert] = "Could not update the post, Please try again"
      render :new
    end
  end
  def public
    @current_blogr_tab = :public
    @posts = Post.published
    render :index
  end
  def publish
  end 
  def unpublish 
  end
 def update
    @post.assign_attributes(post_params)
    if @post.publish
      redirect_to @post, notice: "Successfully published the post!"
    else
      @post.unpublish
      flash.now[:alert] = "Could not update the post, Please try again"
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_url, notice: "Successfully deleted the post"
  end
  private 
    def post_params
      params.require(:post).permit(:title, :body, :all_tags, :picture)
    end
    def authorize_user
      begin
        @post = current_user.posts.find(params[:id])
      rescue
        redirect_to root_url
      end
    end
end
