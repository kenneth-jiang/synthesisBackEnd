Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :songs
      resources :liked_artists
      resources :artists
      resources :users, except: [:create]
      # resources :logins

      get 'login', to: "logins#create"
      post 'home', to: "users#create"
    end
  end
end
