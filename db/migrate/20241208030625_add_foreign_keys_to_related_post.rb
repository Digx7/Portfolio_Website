class AddForeignKeysToRelatedPost < ActiveRecord::Migration[7.2]
  def change
    # add_reference :related_posts, :owner, null: false, foreign_key: true
    # add_reference :related_posts, :related, null: false, foreign_key: true
  end
end
