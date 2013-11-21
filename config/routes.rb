Clinkcloud::Application.routes.draw do
  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create', as: 'categories'

  # READ
  get '/categories', controller: 'categories', action: 'index'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  patch '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

  # Routes for the Post resource:
  # CREATE
  get '/posts/new', controller: 'posts', action: 'new', as: 'new_post'
  post '/posts', controller: 'posts', action: 'create', as: 'posts'

  # READ
  get '/posts', controller: 'posts', action: 'index'
  get '/posts/:id', controller: 'posts', action: 'show', as: 'post'

  # UPDATE
  get '/posts/:id/edit', controller: 'posts', action: 'edit', as: 'edit_post'
  patch '/posts/:id', controller: 'posts', action: 'update'

  # DELETE
  delete '/posts/:id', controller: 'posts', action: 'destroy'
  #------------------------------

  # Routes for the Linked_account resource:
  # CREATE
  get '/linked_accounts/new', controller: 'linked_accounts', action: 'new', as: 'new_linked_account'
  post '/linked_accounts', controller: 'linked_accounts', action: 'create', as: 'linked_accounts'

  # READ
  get '/linked_accounts', controller: 'linked_accounts', action: 'index'
  get '/linked_accounts/:id', controller: 'linked_accounts', action: 'show', as: 'linked_account'

  # UPDATE
  get '/linked_accounts/:id/edit', controller: 'linked_accounts', action: 'edit', as: 'edit_linked_account'
  patch '/linked_accounts/:id', controller: 'linked_accounts', action: 'update'

  # DELETE
  delete '/linked_accounts/:id', controller: 'linked_accounts', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Friend resource:
  # CREATE
  get '/friends/new', controller: 'friends', action: 'new', as: 'new_friend'
  post '/friends', controller: 'friends', action: 'create', as: 'friends'

  # READ
  get '/friends', controller: 'friends', action: 'index'
  get '/friends/:id', controller: 'friends', action: 'show', as: 'friend'

  # UPDATE
  get '/friends/:id/edit', controller: 'friends', action: 'edit', as: 'edit_friend'
  patch '/friends/:id', controller: 'friends', action: 'update'

  # DELETE
  delete '/friends/:id', controller: 'friends', action: 'destroy'
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get '/networks/new', controller: 'networks', action: 'new', as: 'new_network'
  post '/networks', controller: 'networks', action: 'create', as: 'networks'

  # READ
  get '/networks', controller: 'networks', action: 'index'
  get '/networks/:id', controller: 'networks', action: 'show', as: 'network'

  # UPDATE
  get '/networks/:id/edit', controller: 'networks', action: 'edit', as: 'edit_network'
  patch '/networks/:id', controller: 'networks', action: 'update'

  # DELETE
  delete '/networks/:id', controller: 'networks', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
