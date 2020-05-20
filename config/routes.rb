Rails.application.routes.draw do

  root 'maps#index'

  resources :maps
  resources :experiences

  resources :movies do
    resources :comments
  end

  resources :events

  devise_for :users
  resources :users

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
