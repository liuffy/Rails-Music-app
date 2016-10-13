class AddIndexToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_type, :string, default: 'standard'
  end
end
