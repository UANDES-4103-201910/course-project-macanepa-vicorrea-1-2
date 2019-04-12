Rails.application.routes.draw do
  resources :file_attachments
  resources :images
  resources :geofences
  resources :admins
  resources :blacklists
  resources :suspension_lists
  resources :dumpsters
  resources :comments
  resources :validations
  resources :posts
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
