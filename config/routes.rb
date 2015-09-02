Rails.application.routes.draw do
  get '/adventures/fake_results' => 'adventures#fake_results'


  root 'welcome#index'
  get '/login' => 'sessions#index' # shows both login and signup forms
  # get '/adventures/new' => 'adventures#new'
  get '/adventures/results' => 'adventures#results'
  get '/signup' => 'users#new'
  # get '/adventures/search' => 'adventures#search'
  resources :adventures, only: [:new, :create]
  resource :sessions, only: [:create,:destroy]
  resource :welcome, only: [:index]
  resources :users do 
    resources :adventures, only: [:index, :show]
  end
  post '/saveadventure' => 'adventures#saveadventure'
  get "*path" => 'welcome#index'
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
