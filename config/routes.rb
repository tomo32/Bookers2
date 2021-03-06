Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy, :edit]
  get "/users" => "homes#users", as: 'users_path'
  get "/home/about" => "homes#about", as: 'about_path'
  resources :users, only: [:show, :edit]
end
