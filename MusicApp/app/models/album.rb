class Album < ActiveRecord::Base
# A Band records many Albums.
  has_many :tracks, dependent: :destroy
  belongs_to :band

  validates :name, :band, :year, presence: true
  validates :name, uniqueness: {scope: :band_id}
end
