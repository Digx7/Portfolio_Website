class SetColumnDefaultValues < ActiveRecord::Migration[7.2]
  def change
    change_column_default :posts, :title, "Title"
    change_column_default :posts, :subtitle, "Sub-Title"
    change_column_default :posts, :video_link, "https://youtu.be/U2ihtf_wK5Y?si=duXU3Brh0qvx-6-g"
    change_column_default :posts, :content, "Content"

    change_column_default :reply_reactions, :user_upvoted, false
    change_column_default :reply_reactions, :user_downvoted, false
    change_column_default :reply_reactions, :user_reported, false

    change_column_default :replies, :has_been_edited, false
    change_column_default :replies, :content, "Content"
    change_column_default :replies, :upvote_count, 0
    change_column_default :replies, :downvote_count, 0

    change_column_default :comments, :has_been_edited, false
    change_column_default :comments, :content, "Content"
    change_column_default :comments, :upvote_count, 0
    change_column_default :comments, :downvote_count, 0

    change_column_default :comment_reactions, :user_upvoted, false
    change_column_default :comment_reactions, :user_downvoted, false
    change_column_default :comment_reactions, :user_reported, false

    change_column_default :users, :username, "JohnDoe"
    change_column_default :users, :email, "JohnDoe@hotmail.com"
    change_column_default :users, :password_hash, "12345"
    change_column_default :users, :report_count, 0
    change_column_default :users, :coment_count, 0
  end
end
