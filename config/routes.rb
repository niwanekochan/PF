Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admins do
    resources :items, except: [:destroy]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :users, only: [:index, :show]
  end
  namespace :end_users do
    root to: 'homes#top'
    get 'users/confirm', to: 'users#confirm'
    resources :users, only: [:show, :edit, :update]
    get 'search', to: 'items#search'
    resources :items, only: [:index, :show] do
      resources :comments, only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy, :index]
    end
  end
end
