require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get session_login_url
    assert_response :success
  end

  test "should get sign_up" do
    get session_sign_up_url
    assert_response :success
  end

end
