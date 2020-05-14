Rails.application.routes.draw do

  resources :experiences
  resources :movies
  resources :events

  devise_for :users
  root 'users#index'
  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
