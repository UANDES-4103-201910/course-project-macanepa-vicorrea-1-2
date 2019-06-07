Rails.application.routes.draw do
  resources :locations
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks', sessions: "users/sessions" }
  get 'watch/watch'
  get 'search/search'
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
  resources :comments
  resources :posts
  resources :users
  resources :home

  root to: 'home#home'
  delete '/log_out' => 'sessions#destroy', as: :log_out
  get 'user_profile/view', as: 'user_profile_view'
  get 'user_profile', to: 'user_profile#view'
  get 'user_profile/modify', as: 'user_profile_modify'
  get 'session/login', as: 'session_login'
  get 'session/sign_up', as: 'session_sign_up'
  get 'admin', to: 'admins#view', as: 'admin_view'
  get '/search', to: 'search#search', as: 'search'
  get '/posts/watch', to: 'posts#watch'
  get 'watch', to: 'watch#watch'

  post 'admin/edit_admin', to: 'admins#update'
  post 'admin/edit_user', to: 'users#update'
  post 'admin/send_user_to_blacklist', to: 'blacklists#create', as: 'send_user_to_blacklist'
  post 'admin/send_user_to_suspension_list', to: 'suspension_lists#create', as: 'send_user_to_suspension_list'
  post 'admin/send_user_to_block_list', to: 'block_lists#create', as: 'send_user_to_block_list'
  post 'admin/send_post_to_dumpster', to: 'dumpsters#create', as: 'send_post_to_dumpster'
  post 'admin/remove_from_blacklist', to: 'blacklists#update', as: 'remove_from_blacklist'
  post 'admin/remove_post_from_dumpster', to: 'dumpsters#update', as: 'remove_post_from_dumpster'
  post 'admin/remove_from_suspension_list', to: 'suspension_lists#update', as: 'remove_from_suspension_list'
  post 'admin/remove_from_block_list', to: 'block_lists#update', as: 'remove_from_block_list'

  get 'post/see_my_reports', to: 'posts#see_my_reports', :defaults => { :format => 'json' }

  post 'create_post', to: 'posts#create'
  post 'create_validation', to: 'validations#create'
  post 'create_comment', to: 'comments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
