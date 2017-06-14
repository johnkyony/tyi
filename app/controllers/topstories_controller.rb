class TopstoriesController < ApplicationController
  def index
    posts = Bookmark.where(created_at: Date.today).pluck(:bookmarkee_id)
    @Staff_posts =  Post.where(id: posts)
  end
end
