json.extract! product, :id, :name, :code, :price, :supplier_id, :category_id, :amount, :created_at, :updated_at
json.url product_url(product, format: :json)
