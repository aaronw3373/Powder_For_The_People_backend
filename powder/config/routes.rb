Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

##RESORT ROUTES

#gets index of resorts
get '/resorts' => 'resorts#index'
#gets resort by id
get '/resorts/:id' => 'resorts#show'
#gets resort by name
get '/resortsname' => 'resorts#find_by_name'
#create new resort
post '/resorts' => 'resorts#create'
#update atributes
patch '/resorts/:id' => 'resorts#update'
#delete resorts by name
delete '/resortsname' => 'resorts#destroyname'
#delete desorts by id
delete '/resorts/:id' => 'resorts#destroyid'

##USER ROUTES

#get index of users
get '/users' => 'users#index'
#get user by id
get '/users/:id' => 'users#show'
#get user by username
get '/usersname' => 'users#find_by_name'
#create new user
post '/users' => 'users#create'
#update atributes
patch '/users/:id' => 'users#update'
#delete users by username
delete '/usersname' => 'users#destroyname'
#delete users by id
delete '/users/:id' => 'users#destroyid'





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
