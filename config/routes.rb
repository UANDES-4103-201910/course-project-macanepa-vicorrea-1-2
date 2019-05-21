Rails.application.routes.draw do
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
  # resources :users do
  #   resources :posts do
  #     resources :comments
  #   end
  # end
  resources :home

  defaults format: :json do
    resources :posts
  end
  defaults format: :json do
    resources :users
  end

  root to: 'home#home'
  get 'user_profile/view', as: 'user_profile_view'
  get 'user_profile', to: 'user_profile#view'
  get 'user_profile/modify', as: 'user_profile_modify'
  get 'session/login', as: 'session_login'
  get 'session/sign_up', as: 'session_sign_up'
  get 'admin/view', to: 'admins#view', as: 'admin_view'
  get '/admin', to: 'application#update_type_admin', as: 'view_like_admin'
  get '/regular', to: 'application#update_type_regular_user', as: 'view_like_regular_user'
  get '/guest', to: 'application#update_type_guest_user', as: 'view_like_guest_user'
  # get '/search/search', to: 'search'
  get '/search', to: 'search#search', as: 'search'
  get '/posts/watch', to: 'posts#watch'
  get 'watch', to: 'watch#watch'
  # get 'post/watch', as: 'post_watch'

  post 'admin/remove_user_from_list', to: 'admins#remove_user_from_list'
  post 'admin/delete_user', to: 'admins#delete_user'
  post 'admin/stop_being_admin', to: 'admins#stop_being_admin'
  post 'admin/make_user_admin', to: 'admins#make_user_admin'
  post 'admin/remove_post_from_dumpster', to: 'admins#remove_post_from_dumpster'
  post 'admin/delete_post', to: 'admins#delete_post'
  post 'create_post', to: 'posts#create'
  post 'create_validation', to: 'validations#create'
  post 'create_comment', to: 'comments#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
