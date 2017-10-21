json.extract! subject, :id, :title, :description, :price, :for_class_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)
