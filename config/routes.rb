Rails.application.routes.draw do

  root 'home#index'
  get 'home/index', as: 'home'

  get 'users/profile', to: 'users#profile', as: 'profile'

  post 'users/profile', to: 'users#create_outfit'

  get 'outfits/new'

  get 'outfits/index'

  post 'outfits/favorite', to: 'outfits#favorite', as: 'favorite_outfit'

  get 'access/forgot_password'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home"

  get 'logout', to: "access#logout"

  get 'forgot', to: 'access#forgot_password'
  post 'send_reset', to: 'access#send_reset'
  get 'reset/:token', to: 'access#reset_password'
  post 'update_password', to: 'access#update_password'

  get 'location', to: "users#location", as: 'location'

  get 'filter', to: 'outfits#filter'

  resources :users do
    resources :outfits
    # resources :profile
  end

  resources :outfits


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
