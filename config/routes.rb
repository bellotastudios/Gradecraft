GradeCraft::Application.routes.draw do
  resources :assignment_submissions

  resources :group_memberships

  resources :user_assignment_type_weights

  resources :user_grade_weights

  root :to => "home#index"

  %w{students gsis professors admins}.each do |role|
    get "users/#{role}/new" => 'users#new', :as => "new_#{role.singularize}", :role => role.singularize
  end
  
  resources :users do
    collection do
      get 'edit_profile'
      get 'predictor'
      put 'update_profile'
      get 'students'
      get 'staff'
      get 'final_grades'
    end
    resources :earned_badges
  end
  resources :user_sessions
  resources :password_resets
  
  resources :info
  resources :home
  
  resources :courses
  resources :course_grade_schemes
  resources :themes
  resources :badge_sets
  resources :badges
  resources :earned_badges
  resources :groups
  resources :teams
  resources :assignment_types
  resources :assignments do 
    resources :grades do
      collection do
        get :mass_edit
        put :mass_update
        get :gradebook
        post :edit_status
        put :update_status
      end
      resources :earned_badges
    end 
  end
  resources :challenges
  resources :challenge_grades
 
  resources :grade_schemes do
    collection do
      post :destroy_multiple 
    end
  end
  resources :grade_scheme_elements 


  get "info/index"
  get "home/index"
  get 'dashboard' => 'info#dashboard'
  
  post '/current_course/change' => 'current_courses#change', :as => :change_current_course

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
