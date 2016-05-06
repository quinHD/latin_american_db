Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/", to: "site#panel", as: "root"
    resources :acts
    resources :categories
    resources :users
    resources :targets do
      resources :target_categories do
        resources :target_subcategories
      end
    end
    resources :organizations do
      resources :organization_groups do
        resources :organizations_subgroups
      end
    end
  end

  get "acts/filter", to: "acts#filter", as: "filter_acts"
  resources :acts
  resources :categories
end