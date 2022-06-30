Rails.application.routes.draw do
  resources :user_posted_issues, only: [:index]
  resources :posted_issues
  resources :key_issues
  resources :user_key_issues, only: [:index]
  resources :congressional_members, only: [:index, :show]
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
