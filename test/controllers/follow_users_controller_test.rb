require 'test_helper'

class FollowUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follow_user = follow_users(:one)
  end

  test "should get index" do
    get follow_users_url
    assert_response :success
  end

  test "should get new" do
    get new_follow_user_url
    assert_response :success
  end

  test "should create follow_user" do
    assert_difference('FollowUser.count') do
      post follow_users_url, params: { follow_user: { followed_user_id: @follow_user.followed_user_id, request_user_id: @follow_user.request_user_id } }
    end

    assert_redirected_to follow_user_url(FollowUser.last)
  end

  test "should show follow_user" do
    get follow_user_url(@follow_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_follow_user_url(@follow_user)
    assert_response :success
  end

  test "should update follow_user" do
    patch follow_user_url(@follow_user), params: { follow_user: { followed_user_id: @follow_user.followed_user_id, request_user_id: @follow_user.request_user_id } }
    assert_redirected_to follow_user_url(@follow_user)
  end

  test "should destroy follow_user" do
    assert_difference('FollowUser.count', -1) do
      delete follow_user_url(@follow_user)
    end

    assert_redirected_to follow_users_url
  end
end
