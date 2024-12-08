class CreateRelatedPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :related_posts do |t|
      t.timestamps
    end
  end
end
