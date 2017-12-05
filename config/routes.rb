Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'login', to: 'logins#create'
      post 'home', to: 'users#create'
      get 'current_user', to: 'logins#show'

      get 'songs', to: 'songs#create'
      get 'artists', to: 'artists#create'
      get 'related_artists', to: 'related_artists#create'
      get 'top_tracks', to: 'top_tracks#create'
    end
  end
end
