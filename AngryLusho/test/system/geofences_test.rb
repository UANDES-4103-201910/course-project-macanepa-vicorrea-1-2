require "application_system_test_case"

class GeofencesTest < ApplicationSystemTestCase
  setup do
    @geofence = geofences(:one)
  end

  test "visiting the index" do
    visit geofences_url
    assert_selector "h1", text: "Geofences"
  end

  test "creating a Geofence" do
    visit geofences_url
    click_on "New Geofence"

    fill_in "Admin", with: @geofence.admin_id
    click_on "Create Geofence"

    assert_text "Geofence was successfully created"
    click_on "Back"
  end

  test "updating a Geofence" do
    visit geofences_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @geofence.admin_id
    click_on "Update Geofence"

    assert_text "Geofence was successfully updated"
    click_on "Back"
  end

  test "destroying a Geofence" do
    visit geofences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Geofence was successfully destroyed"
  end
end
