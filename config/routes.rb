Rails.application.routes.draw do
  root to:'homes#top'
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
  get "/home/about" => "homes#about", as: 'about_path'
  resources :users, only: [:show, :edit, :index, :update]
end
