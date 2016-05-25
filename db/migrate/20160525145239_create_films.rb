class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.references :category, index: true, foreign_key: true
      t.string :name
      t.string :image_url
      t.text :description

      t.timestamps null: false
    end
  end
end
