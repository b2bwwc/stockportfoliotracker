Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    get  'myindexfunds', to: 'indexfunds#my_index', as: :myifunds
    get  'myportfolios', to: 'portfolios#my_ports', as: :myports

    get  'indexfunds/:id/portfolios', to: 'indexfunds#portfolios',   as: :indexfunds_portfolios
    post 'indexfunds/:id/portfolios', to: 'indexfunds#addportfolio', as: :indexfunds_portfolios_add
    resources :indexfunds, except: [:index]
    resources :portfolios, except: [:index] do
      resources :stocks
    end
  end

  resources :portfolios, only: :index
  resources :indexfunds, only: :index

  root to: "home#index"
  get 'users/:id' => 'users#show', as: :user
  get 'portfolios/index' => 'portfolios#index'
  get 'stocks/search' => 'stocks#search', as: :search_stocks

  # post 'portfolio/create' => 'portfolio#create', as: :create_portfolio

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
