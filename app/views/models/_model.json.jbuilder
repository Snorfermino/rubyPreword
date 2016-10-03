json.extract! model, :id, :tag, :name, :post_id, :created_at, :updated_at
json.url model_url(model, format: :json)