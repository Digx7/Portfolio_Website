json.extract! reply_reaction, :id, :user_upvoted, :user_downvoted, :user_reported, :created_at, :updated_at
json.url reply_reaction_url(reply_reaction, format: :json)
