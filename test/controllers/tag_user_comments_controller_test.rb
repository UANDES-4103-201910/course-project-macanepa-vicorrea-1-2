require 'test_helper'

class TagUserCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_user_comment = tag_user_comments(:one)
  end

  test "should get index" do
    get tag_user_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_user_comment_url
    assert_response :success
  end

  test "should create tag_user_comment" do
    assert_difference('TagUserComment.count') do
      post tag_user_comments_url, params: { tag_user_comment: { comment: @tag_user_comment.comment, user_id: @tag_user_comment.user_id } }
    end

    assert_redirected_to tag_user_comment_url(TagUserComment.last)
  end

  test "should show tag_user_comment" do
    get tag_user_comment_url(@tag_user_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_user_comment_url(@tag_user_comment)
    assert_response :success
  end

  test "should update tag_user_comment" do
    patch tag_user_comment_url(@tag_user_comment), params: { tag_user_comment: { comment: @tag_user_comment.comment, user_id: @tag_user_comment.user_id } }
    assert_redirected_to tag_user_comment_url(@tag_user_comment)
  end

  test "should destroy tag_user_comment" do
    assert_difference('TagUserComment.count', -1) do
      delete tag_user_comment_url(@tag_user_comment)
    end

    assert_redirected_to tag_user_comments_url
  end
end
