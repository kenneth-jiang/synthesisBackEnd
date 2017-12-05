class Api::V1::SongsController < ApplicationController
  def create
    body = {songs: params[:q]}
    # params taken in by the front end
    decoded = JWT.decode(my_user.access_token, ENV["MY_SECRET"], ENV["ES"])
    # taking the access token stored in user and decoding it
    header = {'Authorization': "Bearer " + decoded[0]["access_token"]}
    # iterating through decoded to get to the access token and passing it into the header
    song_response = RestClient.get("https://api.spotify.com/v1/search?q=#{body[:songs]}&type=track", header)
    song_params = JSON.parse(song_response.body)
    # making the fetch request to the spotify api and parsing it
    render json: {songs: song_params}
    # rendering to the back end so the front end can take in the data
  end
end
