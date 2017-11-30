class User < ApplicationRecord
  has_many :liked_artists
  has_many :artists, through: :liked_artists
end
