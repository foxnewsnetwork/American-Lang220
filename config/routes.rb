AmericanLang220::Application.routes.draw do

  get "subscribers/create"
  get "docs/javascript"
  get "docs/curl"
  get "docs/ruby"
  get "docs/java"
  get "docs/python"
  get "docs/php"
  get "communications/transfer"
	
	match "/front", :to=>"pages#front"

	resources :subscribers, :only=>[:create] do
	end
	# Full access for corporations
	scope "corporation" do
		resources :ads do
      member do
      get 'crop'
     end

   end
	end
	# Normalfags can only view the ads

  resources :ads do
    member do
      get 'crop'
    end
  end

  devise_for :users
  devise_for :corporations do
    get '/corporations/sign_out' => 'devise/sessions#destroy'

  end
  resources :betasignups

  resources :robotindex

  match "/developers/", :to=> "robotindex#developers"
  match "/signup/", :to=> "robotindex#gamesignup"
  match "/signup/success", :to=> "robotindex#success"

  match "create", :to => "pages#create"
  match "/success", :to => "pages#success"

  match "/docs", :to => "pages#docs"

  match "/promotion", :to => "advertisersignups#overview"
  match "/channel", :to => "pages#channel"
  match "/contacts", :to => "pages#contact"
  match "/contact", :to => "pages#contact"
  match "/about", :to => "pages#about"
  match "/send", :to => "robotindex#send_mail"
  match "/leader", :to => "pages#leader"
  match "/promotion/partners", :to => "advertisersignups#partner" 

  match "/casters", :to=>"castersignups#overview"
  match "/caster/signup/overview", :to=>"castersignups#overview"
  match "/caster/signup/apply", :to=>"castersignups#apply"
  match "/caster/signup/perks", :to=>"castersignups#perks"
  match "/caster/signup/faq", :to=>"castersignups#faq"
  match "/caster/signup/partners", :to=>"castersignups#partner"
  match "/caster/signup/create", :to=>"castersignups#create"
  
  match "/advertiser/signup/overview", :to=>"advertisersignups#overview"
  match "/advertiser/signup/apply", :to=>"advertisersignups#apply"
  match "/advertiser/signup/demo", :to=>"advertisersignups#demo"
  match "/advertiser/signup/faq", :to=>"advertisersignups#faq"
  match "/advertiser/signup/create", :to=>"advertisersignups#create"
  match "/advertiser/signup/success", :to=>"advertisersignups#success"

  match "/advertiser/signup/overview", :to=>"advertisersignups#overview"
  match "/advertiser/signup/apply", :to=>"advertisersignups#apply"
  match "/advertiser/signup/demo", :to=>"advertisersignups#demo"
  match "/advertiser/signup/faq", :to=>"advertisersignups#faq"
  match "/advertiser/signup/partners", :to=>"advertisersignups#partner"
  match "/advertiser/signup/create", :to=>"advertisersignups#create"

  #root :to => "robotindex#index"
  root :to => "pages#index"

AmericanLang220::Application.routes.draw do
  get "subscribers/create"

  get "docs/javascript"

  get "docs/curl"

  get "docs/ruby"

  get "docs/java"

  get "docs/python"

  get "docs/php"

  #Last route in routes.rb
  match '*a', :to => 'errors#routing'
end
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
