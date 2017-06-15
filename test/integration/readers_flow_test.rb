require 'test_helper'

class ReadersFlowTest < ActionDispatch::IntegrationTest
  
  setup do
    @user = users(:john) 
    sign_in_as @user
  end
  
  test "topstories function" do
    get topstories_index_path
    assert_response :success
    posts = Bookmark.where(created_at: Date.today).pluck(:bookmarkee_id)
    @Staff_posts =  Post.where(id: posts)
    assert @staff_posts.blank?
  end
  
  test "staffPick function" do 
    
  end
end
