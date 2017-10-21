json.extract! news, :id, :title, :description, :highlight, :timestamps, :created_at, :updated_at
json.url news_url(news, format: :json)
