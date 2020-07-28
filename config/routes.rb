Rails.application.routes.draw do
  root 'homes#home'
  get 'maps/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :edit, :update]
  resources :diaries do
  	resource :favorites, only: [:create, :destroy]
  	resources :post_comments, only: [:create, :destroy]
  end
  resources :picture_books
  resources :check_lists
  resources :checks
end
