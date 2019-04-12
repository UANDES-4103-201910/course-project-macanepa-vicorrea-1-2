require "application_system_test_case"

class TagUserCommentsTest < ApplicationSystemTestCase
  setup do
    @tag_user_comment = tag_user_comments(:one)
  end

  test "visiting the index" do
    visit tag_user_comments_url
    assert_selector "h1", text: "Tag User Comments"
  end

  test "creating a Tag user comment" do
    visit tag_user_comments_url
    click_on "New Tag User Comment"

    fill_in "Comment", with: @tag_user_comment.comment
    fill_in "User", with: @tag_user_comment.user_id
    click_on "Create Tag user comment"

    assert_text "Tag user comment was successfully created"
    click_on "Back"
  end

  test "updating a Tag user comment" do
    visit tag_user_comments_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @tag_user_comment.comment
    fill_in "User", with: @tag_user_comment.user_id
    click_on "Update Tag user comment"

    assert_text "Tag user comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag user comment" do
    visit tag_user_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag user comment was successfully destroyed"
  end
end
