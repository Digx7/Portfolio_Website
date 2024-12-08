class AddForeignKeysToReply < ActiveRecord::Migration[7.2]
  def change
    add_reference :replies, :comment, null: false, foreign_key: true
    add_reference :replies, :user, null: false, foreign_key: true
  end
end
