Rails.application.routes.draw do
  get 'chats/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "homes#top"
  get "home/about"=>"homes#about"
  get "search" => "searches#search"
  get 'chat/:id', to: 'chats#show', as: 'chat'

  resources :chats, only: [:show, :create]

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]

    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers'  => 'relationships#followers', as: 'followers'
  end

end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

