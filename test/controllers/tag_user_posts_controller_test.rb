require 'test_helper'

class TagUserPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_user_post = tag_user_posts(:one)
  end

  test "should get index" do
    get tag_user_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_user_post_url
    assert_response :success
  end

  test "should create tag_user_post" do
    assert_difference('TagUserPost.count') do
      post tag_user_posts_url, params: { tag_user_post: { post_id: @tag_user_post.post_id, user_id: @tag_user_post.user_id } }
    end

    assert_redirected_to tag_user_post_url(TagUserPost.last)
  end

  test "should show tag_user_post" do
    get tag_user_post_url(@tag_user_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_user_post_url(@tag_user_post)
    assert_response :success
  end

  test "should update tag_user_post" do
    patch tag_user_post_url(@tag_user_post), params: { tag_user_post: { post_id: @tag_user_post.post_id, user_id: @tag_user_post.user_id } }
    assert_redirected_to tag_user_post_url(@tag_user_post)
  end

  test "should destroy tag_user_post" do
    assert_difference('TagUserPost.count', -1) do
      delete tag_user_post_url(@tag_user_post)
    end

    assert_redirected_to tag_user_posts_url
  end
end
