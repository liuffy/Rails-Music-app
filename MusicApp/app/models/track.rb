class Track < ActiveRecord::Base

  has_many :comments
  belongs_to :album
  has_one :band, through: :album, source: :band

  validates :album_id, :band, :title, :track_type, :lyrics, presence: true
end
