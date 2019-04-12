require 'test_helper'

class FileAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_attachment = file_attachments(:one)
  end

  test "should get index" do
    get file_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_file_attachment_url
    assert_response :success
  end

  test "should create file_attachment" do
    assert_difference('FileAttachment.count') do
      post file_attachments_url, params: { file_attachment: { file: @file_attachment.file, post_id: @file_attachment.post_id } }
    end

    assert_redirected_to file_attachment_url(FileAttachment.last)
  end

  test "should show file_attachment" do
    get file_attachment_url(@file_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_attachment_url(@file_attachment)
    assert_response :success
  end

  test "should update file_attachment" do
    patch file_attachment_url(@file_attachment), params: { file_attachment: { file: @file_attachment.file, post_id: @file_attachment.post_id } }
    assert_redirected_to file_attachment_url(@file_attachment)
  end

  test "should destroy file_attachment" do
    assert_difference('FileAttachment.count', -1) do
      delete file_attachment_url(@file_attachment)
    end

    assert_redirected_to file_attachments_url
  end
end
