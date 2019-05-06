require 'test_helper'

class UserProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get user_profile_view_url
    assert_response :success
  end

  test "should get modify" do
    get user_profile_modify_url
    assert_response :success
  end

end
