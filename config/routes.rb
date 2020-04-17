Rails.application.routes.draw do
  devise_for :users

  resources :posts

  authenticated :user do
    root to: "posts#index", as: :authenticated_root
  end

  root to: "pages#landing"

  get "landing" => "pages#landing"
end