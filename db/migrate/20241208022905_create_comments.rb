class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.boolean :has_been_edited
      t.string :content
      t.integer :upvote_count
      t.integer :downvote_count

      t.timestamps
    end
  end
end
