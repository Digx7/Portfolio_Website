json.extract! comment_reaction, :id, :user_upvoted, :user_downvoted, :user_reported, :created_at, :updated_at
json.url comment_reaction_url(comment_reaction, format: :json)
