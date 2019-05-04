require "application_system_test_case"

class BlacklistsTest < ApplicationSystemTestCase
  setup do
    @blacklist = blacklists(:one)
  end

  test "visiting the index" do
    visit blacklists_url
    assert_selector "h1", text: "Blacklists"
  end

  test "creating a Blacklist" do
    visit blacklists_url
    click_on "New Blacklist"

    fill_in "Exit date", with: @blacklist.exit_date
    fill_in "User", with: @blacklist.user_id
    click_on "Create Blacklist"

    assert_text "Blacklist was successfully created"
    click_on "Back"
  end

  test "updating a Blacklist" do
    visit blacklists_url
    click_on "Edit", match: :first

    fill_in "Exit date", with: @blacklist.exit_date
    fill_in "User", with: @blacklist.user_id
    click_on "Update Blacklist"

    assert_text "Blacklist was successfully updated"
    click_on "Back"
  end

  test "destroying a Blacklist" do
    visit blacklists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blacklist was successfully destroyed"
  end
end
