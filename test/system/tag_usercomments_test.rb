require "application_system_test_case"

class TagUsercommentsTest < ApplicationSystemTestCase
  setup do
    @tag_usercomment = tag_usercomments(:one)
  end

  test "visiting the index" do
    visit tag_usercomments_url
    assert_selector "h1", text: "Tag Usercomments"
  end

  test "creating a Tag usercomment" do
    visit tag_usercomments_url
    click_on "New Tag Usercomment"

    fill_in "Comment", with: @tag_usercomment.comment_id
    fill_in "User", with: @tag_usercomment.user_id
    click_on "Create Tag usercomment"

    assert_text "Tag usercomment was successfully created"
    click_on "Back"
  end

  test "updating a Tag usercomment" do
    visit tag_usercomments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @tag_usercomment.comment_id
    fill_in "User", with: @tag_usercomment.user_id
    click_on "Update Tag usercomment"

    assert_text "Tag usercomment was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag usercomment" do
    visit tag_usercomments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag usercomment was successfully destroyed"
  end
end
