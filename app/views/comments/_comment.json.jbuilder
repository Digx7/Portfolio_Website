json.extract! comment, :id, :has_been_edited, :content, :upvote_count, :downvote_count, :created_at, :updated_at
json.url comment_url(comment, format: :json)
