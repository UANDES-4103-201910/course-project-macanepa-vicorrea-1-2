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

  root to: 'home#home'
  get 'user_profile/view', as: 'user_profile_view'
  get 'user_profile', to: 'user_profile#view'
  get 'user_profile/modify', as: 'user_profile_modify'
  get 'session/login', as: 'session_login'
  get 'session/sign_up', as: 'session_sign_up'
  get 'admin/view', to: 'admins#view', as: 'admin_view'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
