require "application_system_test_case"

class DumpstersTest < ApplicationSystemTestCase
  setup do
    @dumpster = dumpsters(:one)
  end

  test "visiting the index" do
    visit dumpsters_url
    assert_selector "h1", text: "Dumpsters"
  end

  test "creating a Dumpster" do
    visit dumpsters_url
    click_on "New Dumpster"

    fill_in "Post", with: @dumpster.post_id
    click_on "Create Dumpster"

    assert_text "Dumpster was successfully created"
    click_on "Back"
  end

  test "updating a Dumpster" do
    visit dumpsters_url
    click_on "Edit", match: :first

    fill_in "Post", with: @dumpster.post_id
    click_on "Update Dumpster"

    assert_text "Dumpster was successfully updated"
    click_on "Back"
  end

  test "destroying a Dumpster" do
    visit dumpsters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dumpster was successfully destroyed"
  end
end
