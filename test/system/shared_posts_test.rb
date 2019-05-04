require "application_system_test_case"

class SharedPostsTest < ApplicationSystemTestCase
  setup do
    @shared_post = shared_posts(:one)
  end

  test "visiting the index" do
    visit shared_posts_url
    assert_selector "h1", text: "Shared Posts"
  end

  test "creating a Shared post" do
    visit shared_posts_url
    click_on "New Shared Post"

    fill_in "Content", with: @shared_post.content
    fill_in "Post", with: @shared_post.post_id
    fill_in "User", with: @shared_post.user_id
    click_on "Create Shared post"

    assert_text "Shared post was successfully created"
    click_on "Back"
  end

  test "updating a Shared post" do
    visit shared_posts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @shared_post.content
    fill_in "Post", with: @shared_post.post_id
    fill_in "User", with: @shared_post.user_id
    click_on "Update Shared post"

    assert_text "Shared post was successfully updated"
    click_on "Back"
  end

  test "destroying a Shared post" do
    visit shared_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shared post was successfully destroyed"
  end
end
