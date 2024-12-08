class CreateBlogStatuses < ActiveRecord::Migration[7.2]
  def change
    create_table :blog_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
