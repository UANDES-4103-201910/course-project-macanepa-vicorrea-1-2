require 'test_helper'

class DumpstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dumpster = dumpsters(:one)
  end

  test "should get index" do
    get dumpsters_url
    assert_response :success
  end

  test "should get new" do
    get new_dumpster_url
    assert_response :success
  end

  test "should create dumpster" do
    assert_difference('Dumpster.count') do
      post dumpsters_url, params: { dumpster: { post_id: @dumpster.post_id } }
    end

    assert_redirected_to dumpster_url(Dumpster.last)
  end

  test "should show dumpster" do
    get dumpster_url(@dumpster)
    assert_response :success
  end

  test "should get edit" do
    get edit_dumpster_url(@dumpster)
    assert_response :success
  end

  test "should update dumpster" do
    patch dumpster_url(@dumpster), params: { dumpster: { post_id: @dumpster.post_id } }
    assert_redirected_to dumpster_url(@dumpster)
  end

  test "should destroy dumpster" do
    assert_difference('Dumpster.count', -1) do
      delete dumpster_url(@dumpster)
    end

    assert_redirected_to dumpsters_url
  end
end
