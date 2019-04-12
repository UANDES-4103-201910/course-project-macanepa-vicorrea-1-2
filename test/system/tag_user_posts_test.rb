require "application_system_test_case"

class TagUserPostsTest < ApplicationSystemTestCase
  setup do
    @tag_user_post = tag_user_posts(:one)
  end

  test "visiting the index" do
    visit tag_user_posts_url
    assert_selector "h1", text: "Tag User Posts"
  end

  test "creating a Tag user post" do
    visit tag_user_posts_url
    click_on "New Tag User Post"

    fill_in "Post", with: @tag_user_post.post_id
    fill_in "User", with: @tag_user_post.user_id
    click_on "Create Tag user post"

    assert_text "Tag user post was successfully created"
    click_on "Back"
  end

  test "updating a Tag user post" do
    visit tag_user_posts_url
    click_on "Edit", match: :first

    fill_in "Post", with: @tag_user_post.post_id
    fill_in "User", with: @tag_user_post.user_id
    click_on "Update Tag user post"

    assert_text "Tag user post was successfully updated"
    click_on "Back"
  end

  test "destroying a Tag user post" do
    visit tag_user_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tag user post was successfully destroyed"
  end
end
