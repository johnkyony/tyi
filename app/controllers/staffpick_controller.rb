class StaffpickController < ApplicationController
  def index
    user = User.where(editors_role: true ).pluck(:id)
    posts = Bookmark.where(bookmarker_id: user).pluck(:bookmarkee_id)
    @Staff_posts =  Post.where(id: posts)
  end
end
