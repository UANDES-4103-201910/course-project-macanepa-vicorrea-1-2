require 'test_helper'

class SuspensionListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suspension_list = suspension_lists(:one)
  end

  test "should get index" do
    get suspension_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_suspension_list_url
    assert_response :success
  end

  test "should create suspension_list" do
    assert_difference('SuspensionList.count') do
      post suspension_lists_url, params: { suspension_list: { exit_date: @suspension_list.exit_date, user_id: @suspension_list.user_id } }
    end

    assert_redirected_to suspension_list_url(SuspensionList.last)
  end

  test "should show suspension_list" do
    get suspension_list_url(@suspension_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_suspension_list_url(@suspension_list)
    assert_response :success
  end

  test "should update suspension_list" do
    patch suspension_list_url(@suspension_list), params: { suspension_list: { exit_date: @suspension_list.exit_date, user_id: @suspension_list.user_id } }
    assert_redirected_to suspension_list_url(@suspension_list)
  end

  test "should destroy suspension_list" do
    assert_difference('SuspensionList.count', -1) do
      delete suspension_list_url(@suspension_list)
    end

    assert_redirected_to suspension_lists_url
  end
end
