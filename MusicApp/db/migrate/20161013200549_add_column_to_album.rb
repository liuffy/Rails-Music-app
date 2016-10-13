class AddColumnToAlbum < ActiveRecord::Migration
  def change
    add_column :tracks, :album_type, :string, default: 'studio'
  end
end
