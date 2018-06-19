json.extract! company, :id, :name, :logo, :headline, :address, :phone1, :phone2, :lat, :lng, :active, :created_at, :updated_at
json.url company_url(company, format: :json)
