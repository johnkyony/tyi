require 'test_helper'

class StaffpickControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staffpick_index_url
    assert_response :success
  end

end
