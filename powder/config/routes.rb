Rails.application.routes.draw do
  #devise_for :users
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
get '/users/:id' => 'users#show_id'
#get user by email
get '/useremail' => 'users#show_email'
#get user by username
post '/userslogin' => 'users#login'
#create new user
post '/users' => 'users#create'
#update atributes
patch '/users/:id' => 'users#update'
#delete users by username
delete '/useremail' => 'users#destroyname'
#delete users by id
delete '/users/:id' => 'users#destroyid'


##FAVORTIE ROUTES

#get index of favorites
get '/favorites' => 'favorites#index'
#create new favortie relationship
post '/favorites' => 'favorites#create'
#get the favorites of a user
get '/favorites/:id' => 'favorites#show'
#delete a favorite from the user
delete '/favorites/:idU/:idR' => 'favorites#destroy'





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
