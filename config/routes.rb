Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  get 'book_comments/create'
  get 'book_comments/destroy'
  root to:'homes#top'
  devise_for :users
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  get "/home/about" => "homes#about", as: 'about_path'
  resources :users, only: [:show, :edit, :index, :update]
end
