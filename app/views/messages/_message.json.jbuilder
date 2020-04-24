json.extract! message, :id, :message, :member_id, :created_at, :updated_at
json.url message_url(message, format: :json)
