class CreateReleases < ActiveRecord::Migration[7.2]
  def change
    create_table :releases do |t|
      t.string :name, null: false
      t.text :description
      t.string :genre
      t.date :released_at
      t.boolean :active, default: true, null: false
      t.decimal :rating, precision: 3, scale: 1
      t.integer :downloads_count, default: 0, null: false
      t.boolean :featured, default: false, null: false

      t.timestamps
    end
  end
end
