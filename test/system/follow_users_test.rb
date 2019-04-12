require "application_system_test_case"

class FollowUsersTest < ApplicationSystemTestCase
  setup do
    @follow_user = follow_users(:one)
  end

  test "visiting the index" do
    visit follow_users_url
    assert_selector "h1", text: "Follow Users"
  end

  test "creating a Follow user" do
    visit follow_users_url
    click_on "New Follow User"

    fill_in "Followed user", with: @follow_user.followed_user_id
    fill_in "Request user", with: @follow_user.request_user_id
    click_on "Create Follow user"

    assert_text "Follow user was successfully created"
    click_on "Back"
  end

  test "updating a Follow user" do
    visit follow_users_url
    click_on "Edit", match: :first

    fill_in "Followed user", with: @follow_user.followed_user_id
    fill_in "Request user", with: @follow_user.request_user_id
    click_on "Update Follow user"

    assert_text "Follow user was successfully updated"
    click_on "Back"
  end

  test "destroying a Follow user" do
    visit follow_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Follow user was successfully destroyed"
  end
end
