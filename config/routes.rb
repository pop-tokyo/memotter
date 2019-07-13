Rails.application.routes.draw do
  get 'user_relationship/follow'
  get 'memos/create'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "top#index"

  resources :users, only: [:index, :show]
  resources :memos, only: [:create]
  resources  :user_relationship, only: [:create]
end
