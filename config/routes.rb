Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/", to: "site#panel", as: "root"
    resources :categories
    resources :users
  end

  get "acts/filter", to: "acts#filter", as: "acts_filter"
  resources :acts
  resources :categories
end