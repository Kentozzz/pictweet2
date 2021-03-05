Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    collection do #collectionを使うことでidをパスに含むことができるようになる。（だからネストしてる）memberを記述した場合idを含まない。
      get 'search'
    end
  end
  resources :users, only: :show
end