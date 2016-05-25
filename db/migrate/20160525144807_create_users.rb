class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :image_url
      t.integer :role, null: false, default: 0

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
