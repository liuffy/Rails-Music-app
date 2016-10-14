class AddIndexToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :lyrics, :string, null: false
  end
end
