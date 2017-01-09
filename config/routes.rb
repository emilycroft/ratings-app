Rails.application.routes.draw do
  resources :artists
  resources :video_games
  resources :movies
  resources :books
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
