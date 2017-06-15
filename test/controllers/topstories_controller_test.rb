require 'test_helper'

class TopstoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get topstories_index_url
     posts = Bookmark.where(created_at: Date.today).pluck(:bookmarkee_id)
    @Staff_posts =  Post.where(id: posts)
  end

end
