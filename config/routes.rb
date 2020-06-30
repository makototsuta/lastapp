Rails.application.routes.draw do

  root 'maps#index'

  resources :maps

  resources :experiences do
    resources :opinions
    resources :watches, only: [:create]
  end

  resources :movies do
    resources :comments
  end

  resources :events

  devise_for :users
  resources :users

  resources :favorite_events, only: [:create, :destroy]

  resources :favorite_movies, only: [:create, :destroy]

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
