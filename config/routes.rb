Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/", to: "site#panel", as: "root"
    resources :acts
    resources :categories
    resources :users
  end

  get "acts/filter", to: "acts#filter", as: "filter_acts"
  resources :acts
  resources :categories
end