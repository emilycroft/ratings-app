Rails.application.routes.draw do
  resources :artists, :books, :video_games, :movies, :reviews

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
