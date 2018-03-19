json.extract! class_news, :id, :title, :drop, :body, :created_at, :updated_at
json.url class_news_url(class_news, format: :json)
