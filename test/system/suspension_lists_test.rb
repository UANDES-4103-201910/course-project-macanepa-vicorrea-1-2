require "application_system_test_case"

class SuspensionListsTest < ApplicationSystemTestCase
  setup do
    @suspension_list = suspension_lists(:one)
  end

  test "visiting the index" do
    visit suspension_lists_url
    assert_selector "h1", text: "Suspension Lists"
  end

  test "creating a Suspension list" do
    visit suspension_lists_url
    click_on "New Suspension List"

    fill_in "Exit date", with: @suspension_list.exit_date
    fill_in "User", with: @suspension_list.user_id
    click_on "Create Suspension list"

    assert_text "Suspension list was successfully created"
    click_on "Back"
  end

  test "updating a Suspension list" do
    visit suspension_lists_url
    click_on "Edit", match: :first

    fill_in "Exit date", with: @suspension_list.exit_date
    fill_in "User", with: @suspension_list.user_id
    click_on "Update Suspension list"

    assert_text "Suspension list was successfully updated"
    click_on "Back"
  end

  test "destroying a Suspension list" do
    visit suspension_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suspension list was successfully destroyed"
  end
end
