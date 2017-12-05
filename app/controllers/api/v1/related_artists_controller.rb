class Api::V1::RelatedArtistsController < ApplicationController
  def create
    body = {related_artist: params[:q]}
    # params taken in by the front end
    decoded = JWT.decode(my_user.access_token, ENV["MY_SECRET"], ENV["ES"])
    # taking the access token stored in user and decoding it
    header = {'Authorization': "Bearer " + decoded[0]["access_token"]}
    # iterating through decoded to get to the access token and passing it into the header
    related_artist_response = RestClient.get("https://api.spotify.com/v1/artists/#{body[:related_artist]}/related-artists", header)
    related_artist_params = JSON.parse(related_artist_response.body)
    # making the fetch request to the spotify api and parsing it
    render json: {related_artist: related_artist_params}
    # rendering to the back end so the front end can take in the data
  end
end
