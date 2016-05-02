Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/", to: "site#panel", as: "root"
    resources :categories
    resources :users
  end

  resources :acts
  resources :categories
end