class AddForeignKeysToCommentReaction < ActiveRecord::Migration[7.2]
  def change
    add_reference :comment_reactions, :comment, null: false, foreign_key: true
    add_reference :comment_reactions, :user, null: false, foreign_key: true
  end
end
