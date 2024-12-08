json.extract! post, :id, :title, :subtitle, :video_link, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
