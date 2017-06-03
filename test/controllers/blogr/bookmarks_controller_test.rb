require 'test_helper'

class Blogr::BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogr_bookmarks_index_url
    assert_response :success
  end

end
