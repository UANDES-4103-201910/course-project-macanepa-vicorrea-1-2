require 'test_helper'

class TagUsercommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_usercomment = tag_usercomments(:one)
  end

  test "should get index" do
    get tag_usercomments_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_usercomment_url
    assert_response :success
  end

  test "should create tag_usercomment" do
    assert_difference('TagUsercomment.count') do
      post tag_usercomments_url, params: { tag_usercomment: { comment_id: @tag_usercomment.comment_id, user_id: @tag_usercomment.user_id } }
    end

    assert_redirected_to tag_usercomment_url(TagUsercomment.last)
  end

  test "should show tag_usercomment" do
    get tag_usercomment_url(@tag_usercomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_usercomment_url(@tag_usercomment)
    assert_response :success
  end

  test "should update tag_usercomment" do
    patch tag_usercomment_url(@tag_usercomment), params: { tag_usercomment: { comment_id: @tag_usercomment.comment_id, user_id: @tag_usercomment.user_id } }
    assert_redirected_to tag_usercomment_url(@tag_usercomment)
  end

  test "should destroy tag_usercomment" do
    assert_difference('TagUsercomment.count', -1) do
      delete tag_usercomment_url(@tag_usercomment)
    end

    assert_redirected_to tag_usercomments_url
  end
end
