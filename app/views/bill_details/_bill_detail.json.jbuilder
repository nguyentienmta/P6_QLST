json.extract! bill_detail, :id, :bill_id, :product_id, :price, :amount, :sale, :total, :created_at, :updated_at
json.url bill_detail_url(bill_detail, format: :json)
