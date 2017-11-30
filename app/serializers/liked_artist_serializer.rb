class LikedArtistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :artist_id
end
