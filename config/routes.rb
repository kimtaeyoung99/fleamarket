Rails.application.routes.draw do
  
 
  resources :questions
  devise_for :users
  root 'home#special-fashion'
  
  
  post '/questions/:question_id' =>"questionreplys#create"
  delete '/questions/:question_id/questionreplys/:id' =>"questionreplys#destroy"
  
  post '/questions/:question_id/questionreplys/:id' =>"questionreplys#update"
  
  get '/home/elements-accordions' => 'home#elements-accordions'
  get '/home/elements-buttons' => 'home#elements-buttons'
  get '/home/elements-forms' => 'home#elements-forms'
  get '/home/elements-icons-et' => 'home#elements-icons-et'
  get '/home/elements-icons-fe'=> 'home#elements-icons-fe'
  get '/home/elements-tabs' => 'home#elements-tabs'
  get '/home/pages-account' => 'home#pages-account'
  get '/attend/register' => 'attend#register'
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
