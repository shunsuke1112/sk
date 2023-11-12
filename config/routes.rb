Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'shindans' => 'sindans#index'
  resources :users, only: [:show]
  # ユーザーマイページへのルーティング
  resources :comics
  root 'comics#index'
end
