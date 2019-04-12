require "application_system_test_case"

class FileAttachmentsTest < ApplicationSystemTestCase
  setup do
    @file_attachment = file_attachments(:one)
  end

  test "visiting the index" do
    visit file_attachments_url
    assert_selector "h1", text: "File Attachments"
  end

  test "creating a File attachment" do
    visit file_attachments_url
    click_on "New File Attachment"

    fill_in "File", with: @file_attachment.file
    fill_in "Post", with: @file_attachment.post_id
    click_on "Create File attachment"

    assert_text "File attachment was successfully created"
    click_on "Back"
  end

  test "updating a File attachment" do
    visit file_attachments_url
    click_on "Edit", match: :first

    fill_in "File", with: @file_attachment.file
    fill_in "Post", with: @file_attachment.post_id
    click_on "Update File attachment"

    assert_text "File attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a File attachment" do
    visit file_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "File attachment was successfully destroyed"
  end
end
