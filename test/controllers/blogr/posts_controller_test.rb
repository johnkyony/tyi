require 'test_helper'

class Blogr::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogr_posts_index_url
    assert_response :success
  end

  test "should get edit" do
    get blogr_posts_edit_url
    assert_response :success
  end

end
