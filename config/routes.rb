Rails.application.routes.draw do
  get 'users/index'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
