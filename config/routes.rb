Rails.application.routes.draw do
  resources :artists, :books, :video_games, :movies, :reviews, :users, :sessions

  root to: 'pages#home', as: 'homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
