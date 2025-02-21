json.extract! fb_group, :id, :title, :description, :user_id, :created_at, :updated_at
json.url fb_group_url(fb_group, format: :json)
