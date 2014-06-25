Games::Application.routes.draw do
  
  resources :games do
    put :favorite, on: :member
  end
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :contacts, only: [:new, :create]
  
  root 'games#welcome'
  
  get "users/new" 
    
  match '/help', to: 'games#help', via: 'get'
  match '/help/consoles', to: 'games#consoles', via: 'get'
  match '/help/genres', to: 'games#genres', via: 'get'
  match '/help/users', to: 'games#users', via: 'get'
  match '/about', to: 'games#about', via: 'get'
  match '/contacts', to: 'contacts#new', via: 'get'
  match '/users/:id/favorites', to: 'users#favorites', via: 'get'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  
 # match '/about', to: 'static_pages#about', via: get
#  match '/contact', to: 'static_pages#contact', via: get
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
