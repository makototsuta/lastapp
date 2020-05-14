Rails.application.routes.draw do

  root 'maps#index'

  resources :maps
  resources :experiences
  resources :movies
  resources :events

  devise_for :users
  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
