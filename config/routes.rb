AmericanLang220::Application.routes.draw do

  get "castersignups/home"
  get "castersignups/success"
  get "castersignups/failure"
  get "castersignups/faq"
  get "castersignups/overview"
  get "castersignups/perks"
  get "castersignups/partners"

  get "communications/transfer"
	
	# Full access for corporations
	scope "corporation" do
		resources :ads
	end
	# Normalfags can only view the ads
	resources :ads, :only => [ :index, :show ]

  resources :ads do
    member do
      get 'crop'
    end
  end

  devise_for :users
  devise_for :corporations
  resources :betasignups

  get "pages/home"
  get "pages/about"
  get "pages/channels"

  match "create", :to => "pages#create"
  match "/success", :to => "pages#success"
  match "/promotion", :to => "pages#promotion"
  match "/channel", :to => "pages#channel"
  match "/contact", :to => "pages#contact"
  match "/about", :to => "pages#about"
  match "/leader", :to => "pages#leader"
  match "/promotion/partners", :to => "pages#partner" 

  match "/casters", :to=>"castersignups#overview"
  match "/caster/signup/overview", :to=>"castersignups#overview"
  match "/caster/signup/apply", :to=>"castersignups#apply"
  match "/caster/signup/perks", :to=>"castersignups#perks"
  match "/caster/signup/faq", :to=>"castersignups#faq"
  match "/caster/signup/partners", :to=>"castersignups#partner"
  match "/caster/signup/create", :to=>"castersignups#create"

  root :to => "pages#holder"

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
