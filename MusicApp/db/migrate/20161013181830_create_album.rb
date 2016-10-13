class CreateAlbum < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :band_id, null: false
      t.integer :year, null: false
      t.timestamps
    end
    add_index :albums, :band_id, unique: true
    add_index :albums, :name, unique: true
  end
end
