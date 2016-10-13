class RemoveColumnFromBand < ActiveRecord::Migration
  def change
    remove_column :bands, :band_id, :integer
    remove_column :bands, :year, :integer
  end
end
