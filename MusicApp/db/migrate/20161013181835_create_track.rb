class CreateTrack < ActiveRecord::Migration
  def change #tracks have a title, album it comes from
    create_table :tracks do |t|
      t.string :title, null: false
      t.integer :album_id, null: false #which album it comes from
      t.timestamps
    end
    add_index :tracks, :album_id, unique: true
  end
end
