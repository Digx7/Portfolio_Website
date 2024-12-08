class AddForeignKeysToBlog < ActiveRecord::Migration[7.2]
  def change
    add_reference :posts, :blog_type, null: false, foreign_key: true
    add_reference :posts, :blog_status, null: false, foreign_key: true
  end
end
