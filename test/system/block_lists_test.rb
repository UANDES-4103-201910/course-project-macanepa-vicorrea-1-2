require "application_system_test_case"

class BlockListsTest < ApplicationSystemTestCase
  setup do
    @block_list = block_lists(:one)
  end

  test "visiting the index" do
    visit block_lists_url
    assert_selector "h1", text: "Block Lists"
  end

  test "creating a Block list" do
    visit block_lists_url
    click_on "New Block List"

    fill_in "Exit date", with: @block_list.exit_date
    fill_in "User", with: @block_list.user_id
    click_on "Create Block list"

    assert_text "Block list was successfully created"
    click_on "Back"
  end

  test "updating a Block list" do
    visit block_lists_url
    click_on "Edit", match: :first

    fill_in "Exit date", with: @block_list.exit_date
    fill_in "User", with: @block_list.user_id
    click_on "Update Block list"

    assert_text "Block list was successfully updated"
    click_on "Back"
  end

  test "destroying a Block list" do
    visit block_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Block list was successfully destroyed"
  end
end
