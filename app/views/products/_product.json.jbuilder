json.extract! product, :id, :name, :title, :description, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
