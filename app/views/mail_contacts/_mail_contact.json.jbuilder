json.extract! mail_contact, :id, :name, :email, :question, :already_read, :already_answered, :created_at, :updated_at
json.url mail_contact_url(mail_contact, format: :json)
