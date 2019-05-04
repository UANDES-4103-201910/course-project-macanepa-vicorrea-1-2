Rails.application.routes.draw do
  resources :tags
  resources :follows
  resources :shared_posts
  resources :validations
  resources :reports
  resources :dumpsters
  resources :block_lists
  resources :suspension_lists
  resources :blacklists
  resources :admins
  resources :profiles
  resources :users do
    resources :posts do
      resources :comments
    end
  end
  resources :home
  resources :login

  root to: 'home#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
