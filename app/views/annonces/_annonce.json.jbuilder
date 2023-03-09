json.extract! annonce, :id, :title, :content, :user_id, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
