class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_hash
      t.binary :profile_icon
      t.integer :coment_count
      t.integer :report_count

      t.timestamps
    end
  end
end
