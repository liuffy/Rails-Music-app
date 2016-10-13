class Track < ActiveRecord::Base

  belongs_to :album
  has_one :band, through: :album, source: :band

  validates :album_id, :band, :title, :track_type, presence: true
end
