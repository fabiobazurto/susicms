json.extract! entry_page, :id, :title, :body, :published, :section_id, :created_at, :updated_at
json.url entry_page_url(entry_page, format: :json)
