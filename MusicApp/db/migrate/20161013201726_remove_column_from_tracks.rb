class RemoveColumnFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :album_type, :string
    add_column :albums, :album_type, :string, default: 'studio'
  end
end
