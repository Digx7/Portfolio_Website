class AddForeignKeysToUser < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :user_role, null: false, foreign_key: true
  end
end
