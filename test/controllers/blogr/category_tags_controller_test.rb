require 'test_helper'

class Blogr::CategoryTagsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogr_category_tags_index_url
    assert_response :success
  end

end
