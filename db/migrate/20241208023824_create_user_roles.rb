class CreateUserRoles < ActiveRecord::Migration[7.2]
  def change
    create_table :user_roles do |t|
      t.string :role

      t.timestamps
    end
  end
end
