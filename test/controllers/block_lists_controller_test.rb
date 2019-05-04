require 'test_helper'

class BlockListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @block_list = block_lists(:one)
  end

  test "should get index" do
    get block_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_block_list_url
    assert_response :success
  end

  test "should create block_list" do
    assert_difference('BlockList.count') do
      post block_lists_url, params: { block_list: { exit_date: @block_list.exit_date, user_id: @block_list.user_id } }
    end

    assert_redirected_to block_list_url(BlockList.last)
  end

  test "should show block_list" do
    get block_list_url(@block_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_block_list_url(@block_list)
    assert_response :success
  end

  test "should update block_list" do
    patch block_list_url(@block_list), params: { block_list: { exit_date: @block_list.exit_date, user_id: @block_list.user_id } }
    assert_redirected_to block_list_url(@block_list)
  end

  test "should destroy block_list" do
    assert_difference('BlockList.count', -1) do
      delete block_list_url(@block_list)
    end

    assert_redirected_to block_lists_url
  end
end
