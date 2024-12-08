json.extract! reply, :id, :has_been_edited, :content, :upvote_count, :downvote_count, :created_at, :updated_at
json.url reply_url(reply, format: :json)
