json.extract! file_attachment, :id, :post_id, :file, :created_at, :updated_at
json.url file_attachment_url(file_attachment, format: :json)
