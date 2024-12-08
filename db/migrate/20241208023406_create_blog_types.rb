class CreateBlogTypes < ActiveRecord::Migration[7.2]
  def change
    create_table :blog_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
