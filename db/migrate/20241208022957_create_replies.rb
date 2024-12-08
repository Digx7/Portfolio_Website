class CreateReplies < ActiveRecord::Migration[7.2]
  def change
    create_table :replies do |t|
      t.boolean :has_been_edited
      t.string :content
      t.integer :upvote_count
      t.integer :downvote_count

      t.timestamps
    end
  end
end
