require 'test_helper'

class GeofencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geofence = geofences(:one)
  end

  test "should get index" do
    get geofences_url
    assert_response :success
  end

  test "should get new" do
    get new_geofence_url
    assert_response :success
  end

  test "should create geofence" do
    assert_difference('Geofence.count') do
      post geofences_url, params: { geofence: { admin_id: @geofence.admin_id, geofence: @geofence.geofence } }
    end

    assert_redirected_to geofence_url(Geofence.last)
  end

  test "should show geofence" do
    get geofence_url(@geofence)
    assert_response :success
  end

  test "should get edit" do
    get edit_geofence_url(@geofence)
    assert_response :success
  end

  test "should update geofence" do
    patch geofence_url(@geofence), params: { geofence: { admin_id: @geofence.admin_id, geofence: @geofence.geofence } }
    assert_redirected_to geofence_url(@geofence)
  end

  test "should destroy geofence" do
    assert_difference('Geofence.count', -1) do
      delete geofence_url(@geofence)
    end

    assert_redirected_to geofences_url
  end
end
