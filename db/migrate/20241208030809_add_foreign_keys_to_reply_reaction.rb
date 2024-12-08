class AddForeignKeysToReplyReaction < ActiveRecord::Migration[7.2]
  def change
    add_reference :reply_reactions, :reply, null: false, foreign_key: true
    add_reference :reply_reactions, :user, null: false, foreign_key: true
  end
end
