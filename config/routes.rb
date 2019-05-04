Rails.application.routes.draw do
  resources :tags
  resources :follows
  resources :shared_posts
  resources :validations
  resources :reports
  resources :comments
  resources :dumpsters
  resources :posts
  resources :block_lists
  resources :suspension_lists
  resources :blacklists
  resources :admins
  resources :profiles
  resources :users
  resources :home
  resources :login

  root to: 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
