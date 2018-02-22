json.extract! customer, :id, :name, :email, :phone, :addressoptin, :meal_count, :created_at, :updated_at
json.url customer_url(customer, format: :json)
