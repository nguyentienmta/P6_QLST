json.extract! customer, :id, :name, :code, :sex, :birthday, :created_at, :updated_at
json.url customer_url(customer, format: :json)
