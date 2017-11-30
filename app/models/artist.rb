class Artist < ApplicationRecord
  has_many :liked_artists
  has_many :users, through: :liked_artist
end
