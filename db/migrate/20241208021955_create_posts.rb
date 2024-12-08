class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :video_link
      t.string :content

      t.timestamps
    end
  end
end
