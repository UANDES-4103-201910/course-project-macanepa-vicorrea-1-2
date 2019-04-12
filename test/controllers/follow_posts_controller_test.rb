require 'test_helper'

class FollowPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @follow_post = follow_posts(:one)
  end

  test "should get index" do
    get follow_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_follow_post_url
    assert_response :success
  end

  test "should create follow_post" do
    assert_difference('FollowPost.count') do
      post follow_posts_url, params: { follow_post: { post_id: @follow_post.post_id, user_id: @follow_post.user_id } }
    end

    assert_redirected_to follow_post_url(FollowPost.last)
  end

  test "should show follow_post" do
    get follow_post_url(@follow_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_follow_post_url(@follow_post)
    assert_response :success
  end

  test "should update follow_post" do
    patch follow_post_url(@follow_post), params: { follow_post: { post_id: @follow_post.post_id, user_id: @follow_post.user_id } }
    assert_redirected_to follow_post_url(@follow_post)
  end

  test "should destroy follow_post" do
    assert_difference('FollowPost.count', -1) do
      delete follow_post_url(@follow_post)
    end

    assert_redirected_to follow_posts_url
  end
end
