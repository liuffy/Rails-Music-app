class RemoveIndexFromAlbums < ActiveRecord::Migration
  def change
    remove_index :albums, :band_id
  end
end
