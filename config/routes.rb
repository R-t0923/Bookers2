Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'about' => 'homes#about',as:"home_about"

  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]


end
