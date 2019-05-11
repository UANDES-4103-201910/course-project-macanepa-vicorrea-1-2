require 'test_helper'

class WatchControllerTest < ActionDispatch::IntegrationTest
  test "should get watch" do
    get watch_watch_url
    assert_response :success
  end

end
