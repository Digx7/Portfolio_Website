class FixColumnNameBlogTypes < ActiveRecord::Migration[7.2]
  def change
    rename_column :blog_types, :type, :category
  end
end
