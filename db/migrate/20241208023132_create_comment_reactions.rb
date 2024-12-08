class CreateCommentReactions < ActiveRecord::Migration[7.2]
  def change
    create_table :comment_reactions do |t|
      t.boolean :user_upvoted
      t.boolean :user_downvoted
      t.boolean :user_reported

      t.timestamps
    end
  end
end