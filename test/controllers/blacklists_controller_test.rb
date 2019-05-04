require 'test_helper'

class BlacklistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blacklist = blacklists(:one)
  end

  test "should get index" do
    get blacklists_url
    assert_response :success
  end

  test "should get new" do
    get new_blacklist_url
    assert_response :success
  end

  test "should create blacklist" do
    assert_difference('Blacklist.count') do
      post blacklists_url, params: { blacklist: { exit_date: @blacklist.exit_date, user_id: @blacklist.user_id } }
    end

    assert_redirected_to blacklist_url(Blacklist.last)
  end

  test "should show blacklist" do
    get blacklist_url(@blacklist)
    assert_response :success
  end

  test "should get edit" do
    get edit_blacklist_url(@blacklist)
    assert_response :success
  end

  test "should update blacklist" do
    patch blacklist_url(@blacklist), params: { blacklist: { exit_date: @blacklist.exit_date, user_id: @blacklist.user_id } }
    assert_redirected_to blacklist_url(@blacklist)
  end

  test "should destroy blacklist" do
    assert_difference('Blacklist.count', -1) do
      delete blacklist_url(@blacklist)
    end

    assert_redirected_to blacklists_url
  end
end
