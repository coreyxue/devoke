Rails.application.routes.draw do

  get 'changelogs/index/:offset/:limit', to: 'changelogs#index', as: 'changelogs_index'

  #resources :users do
  resources :posts
  #end

  #get 'posts', to: 'posts#show', as: 'posts'
  #get 'posts/new', to: 'posts#new', as: 'new_posts'
  #post 'post/create', to: 'posts#create', as: 'post_create'
  #get 'post/edit/:id', to: 'posts#edit', as: 'post_edit'
  #patch 'post/update/:id', as: 'post_update'
  #delete 'post/delete/:id', as: 'post_delete'

  get 'redemptions', to: 'redemption#index', as: 'redemption_history'

  post 'redemption/create/:reward_id', to: 'redemption#create', as: 'create_redemption'

  get 'rewards', to: 'reward#index', as: 'reward_index'
  get 'reward/show/:id', to: 'reward#show', as: 'reward_show'

  get 'checkins/index/:year/:month', to: 'checkins#index', as: 'checkins_index'
  post 'checkins/create'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'


  get '/users/:user_id/profile', to: 'user_information#show', as: 'profile'

  get '/users/profile_new', to: 'user_information#new', as: 'profile_new'
  get '/users/profile_edit', to: 'user_information#edit', as: 'profile_edit'
  post '/users/profile_create', to: 'user_information#create', as: 'profile_create'
  patch '/user/profile_update', to: 'user_information#update', as: 'profile_update'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
