Rails.application.routes.draw do
  resources :follow_users
  resources :follow_posts
  resources :reports
  resources :validations
  resources :users
  resources :suspension_lists
  resources :profiles
  resources :posts
  resources :images
  resources :geofences
  resources :file_attachments
  resources :dumpsters
  resources :comments
  resources :blacklists
  resources :admins

  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
