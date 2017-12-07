# README

Synthesis

Overview

  Synthesis API provides the support for the Synthesis React Front End. This app is responsible for making Spotify API calls and passing User Authorization/Authentication. Eventually, the Synthesis user would be able to update their Spotify favorites to include the newly discovered music.



Routes

  get 'songs', to: 'songs#create’

  get 'artists', to: 'artists#create

  get 'related_artists', to: 'related_artists#create'

  get 'top_tracks', to: 'top_tracks#create’

  - The above actions take get passed user input from the Front End, hits the Spotify API and renders the requested information back to the Front End as JSON.

  get 'login', to: 'logins#create’

  Authenticate user information
  post 'home', to: 'users#create’

  - Creates/Generates users the users actual Spotify account

  get 'current_user', to: 'logins#show’

  - Renders the current user to the Front End


Functionality

  This API communicates with both the Spotify API as well as the Synthesis Front End

  All requests are made to Spotify for User/Artists/Related Artists/Tracks content.

  User Access information is encoded and decoded here for optimal security using JSON Web Token authentication

//---------
