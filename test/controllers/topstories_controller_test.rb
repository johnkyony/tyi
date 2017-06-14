require 'test_helper'

class TopstoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get topstories_index_url
    assert_response :success
  end

end
